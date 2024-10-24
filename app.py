from flask import Flask, render_template, request, redirect, session, url_for, flash
from flask_mysqldb import MySQL
import MySQLdb.cursors
from werkzeug.security import generate_password_hash, check_password_hash

app = Flask(__name__)
app.secret_key = 'secret-key'

# MySQL configurations
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Yoga_1010@SQL'
app.config['MYSQL_DB'] = 'commerce'

mysql = MySQL(app)

# Routes

@app.route('/')
def home():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM products")
    products = cur.fetchall()
    return render_template('home.html', products=products)


# User Signup
@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.form.get('username')
        email = request.form.get('email')
        password = request.form.get('password')
        
        # Simple validation
        if not username or not email or not password:
            flash("Please fill out all fields.", 'danger')
            return redirect(url_for('signup'))

        # Hash the password before storing it
        hashed_password = generate_password_hash(password, method='pbkdf2:sha256')

        try:
            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO users(username, email, password) VALUES (%s, %s, %s)", (username, email, hashed_password))
            mysql.connection.commit()
            flash("Signup successful! You can now log in.", 'success')
            return redirect(url_for('login'))
        except Exception as e:
            flash("An error occurred while signing up. Please try again.", 'danger')
            return redirect(url_for('signup'))
        finally:
            cur.close()

    return render_template('signup.html')

# User Login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']

        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("SELECT * FROM users WHERE email=%s", (email,))
        user = cur.fetchone()

        # Check if user exists and password is correct
        if user and check_password_hash(user['password'], password):
            session['loggedin'] = True
            session['username'] = user['username']
            flash(f"Welcome {user['username']}!", 'success')
            return redirect(url_for('home'))
        else:
            flash('Incorrect email or password', 'danger')

    return render_template('login.html')

# Logout
@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('username', None)
    flash('You have been logged out.', 'info')
    return redirect(url_for('home'))

# Product Detail
@app.route('/product/<int:product_id>', methods=['GET', 'POST'])
def product_detail(product_id):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM products WHERE id = %s", (product_id,))
    product = cur.fetchone()

    if request.method == 'POST':
        quantity = int(request.form['quantity'])
        cart_item = {
            'id': product['id'],
            'name': product['name'],
            'price': product['price'],
            'quantity': quantity
        }

        # Check if cart exists in session, otherwise create one
        if 'cart' not in session:
            session['cart'] = []

        session['cart'].append(cart_item)
        flash(f"{product['name']} added to the cart.", 'success')
        return redirect(url_for('cart'))

    return render_template('product_detail.html', product=product)

# Cart Route
# @app.route('/cart')
# def cart():
#     # Get cart from session or initialize an empty list
#     cart = session.get('cart', [])
#     return render_template('cart.html', cart=cart)

# Add to Cart
# @app.route('/add_to_cart/<int:product_id>', methods=['POST'])
# def add_to_cart(product_id):
#     if 'loggedin' not in session:
#         flash("Please log in to add items to your cart", 'danger')
#         return redirect(url_for('login'))

#     cur = mysql.connection.cursor()
#     cur.execute("""
#         INSERT INTO cart_items(user_id, product_id, quantity) 
#         VALUES ((SELECT id FROM users WHERE username=%s), %s, 1)
#         ON DUPLICATE KEY UPDATE quantity = quantity + 1
#     """, (session['username'], product_id))
#     mysql.connection.commit()
#     flash("Product added to cart!", 'success')
#     return redirect(url_for('cart'))


@app.route('/add_to_cart/<int:product_id>', methods=['POST'])
def add_to_cart(product_id):
    if 'loggedin' not in session:
        flash("Please log in to add items to your cart", 'danger')
        return redirect(url_for('login'))

    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * FROM products WHERE id = %s", (product_id,))
    product = cur.fetchone()

    if product:
        cart_item = {
            'id': product['id'],
            'name': product['name'],
            'price': product['price'],
            'quantity': 1  # Default quantity
        }

        # Check if cart exists in session
        if 'cart' not in session:
            session['cart'] = []

        # Check if the item is already in the cart, and update its quantity
        cart = session['cart']
        for item in cart:
            if item['id'] == product_id:
                item['quantity'] += 1
                break
        else:
            session['cart'].append(cart_item)

        session.modified = True  # To notify Flask that session has been updated
        flash(f"{product['name']} added to the cart.", 'success')

    return redirect(url_for('cart'))

@app.route('/cart')
def cart():
    # Get cart from session or initialize an empty list
    cart = session.get('cart', [])
    
    # Calculate the subtotal
    subtotal = sum(float(item['price']) * int(item['quantity']) for item in cart)
    
    return render_template('cart.html', cart=cart, subtotal=subtotal)




@app.route('/remove_from_cart/<int:product_id>')
def remove_from_cart(product_id):
    cart = session.get('cart', [])
    # Remove the item with the specified product_id
    cart = [item for item in cart if item['id'] != product_id]
    session['cart'] = cart  # Update the session cart
    flash("Item removed from cart.", 'success')
    return redirect(url_for('cart'))


@app.route('/checkout')
def checkout():
    if 'cart' in session:
        session.pop('cart', None)  # Clear the cart
        flash('Order placed successfully!', 'success')
    return redirect(url_for('home'))
 

if __name__ == '__main__':
    app.run(debug=True)

