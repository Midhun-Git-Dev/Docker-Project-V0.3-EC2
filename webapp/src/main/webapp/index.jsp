<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Premium E-Commerce - Home</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
        /* Navbar */
        .navbar {
            position: sticky;
            top: 0;
            background-color: #232f3e;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .navbar .search-bar {
            flex: 1;
            margin: 0 20px;
            display: flex;
        }
        .navbar .search-bar input {
            width: 100%;
            padding: 8px;
            border: none;
            border-radius: 4px 0 0 4px;
        }
        .navbar .search-bar button {
            padding: 8px 12px;
            background-color: #febd69;
            border: none;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
        }
        .navbar .icons {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .navbar .icons .cart {
            position: relative;
        }
        .navbar .icons .cart span {
            position: absolute;
            top: -5px;
            right: -10px;
            background: red;
            color: white;
            border-radius: 50%;
            padding: 2px 6px;
            font-size: 12px;
        }
        /* Hero Banner */
        .hero {
            background: url('https://via.placeholder.com/1920x400?text=Hero+Banner+Offers') no-repeat center/cover;
            height: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
        }
        .hero-content {
            background: rgba(0,0,0,0.4);
            padding: 20px;
            border-radius: 8px;
        }
        .hero h1 {
            font-size: 48px;
        }
        .hero p {
            font-size: 24px;
        }
        /* Categories */
        .categories {
            display: flex;
            overflow-x: auto;
            padding: 20px;
            background: #fff;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .category {
            min-width: 150px;
            text-align: center;
            margin-right: 20px;
            cursor: pointer;
            transition: transform 0.3s;
        }
        .category:hover {
            transform: scale(1.05);
        }
        .category img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }
        /* Product Grid */
        .product-section {
            padding: 20px;
        }
        .product-section h2 {
            margin-bottom: 20px;
        }
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }
        .product-card {
            background: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }
        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: contain;
            padding: 20px;
        }
        .product-info {
            padding: 15px;
        }
        .product-name {
            font-size: 18px;
            margin-bottom: 5px;
        }
        .product-price {
            font-size: 16px;
            color: #B12704;
            font-weight: bold;
        }
        .product-rating {
            color: #ffa41c;
            margin-bottom: 5px;
        }
        .discount-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background: #ff0000;
            color: #fff;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 12px;
        }
        .add-to-cart {
            background: #ffd814;
            border: none;
            padding: 10px;
            width: 100%;
            cursor: pointer;
            margin-top: 10px;
            border-radius: 4px;
            transition: background 0.3s;
        }
        .add-to-cart:hover {
            background: #f7ca00;
        }
        /* Deals Section */
        .deals-section {
            background: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .deals-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        .countdown {
            font-size: 18px;
            color: #ff0000;
        }
        /* Footer */
        footer {
            background: #232f3e;
            color: #fff;
            padding: 40px 20px;
            text-align: center;
        }
        .footer-links {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-bottom: 20px;
        }
        .footer-links div {
            min-width: 150px;
        }
        .footer-links h4 {
            margin-bottom: 10px;
        }
        .footer-links ul {
            list-style: none;
        }
        .footer-links li {
            margin-bottom: 5px;
        }
        .social-icons {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }
        .social-icons a {
            font-size: 24px;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding: 10px;
            }
            .navbar .search-bar {
                margin: 10px 0;
                width: 100%;
            }
            .hero {
                height: 300px;
            }
            .hero h1 {
                font-size: 32px;
            }
            .hero p {
                font-size: 18px;
            }
            .categories {
                justify-content: flex-start;
            }
            .product-grid {
                grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            }
            .footer-links {
                flex-direction: column;
                gap: 20px;
            }
        }
        @media (max-width: 480px) {
            .navbar .icons {
                gap: 10px;
            }
            .hero {
                height: 200px;
            }
            .hero h1 {
                font-size: 24px;
            }
            .hero p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <header class="navbar">
        <div class="logo">E-Shop</div>
        <div class="search-bar">
            <input type="text" placeholder="Search for products...">
            <button>🔍</button>
        </div>
        <div class="icons">
            <div class="cart">🛒 <span>0</span></div>
            <a href="#">Login</a>
            <a href="#">Signup</a>
        </div>
    </header>

    <!-- Hero Banner -->
    <section class="hero">
        <div class="hero-content">
            <h1>Big Sale Up to 50% Off!</h1>
            <p>Shop now and save on your favorites.</p>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="categories">
        <div class="category">
            <img src="https://via.placeholder.com/100?text=Mobiles" alt="Mobiles">
            <p>Mobiles</p>
        </div>
        <div class="category">
            <img src="https://via.placeholder.com/100?text=Electronics" alt="Electronics">
            <p>Electronics</p>
        </div>
        <div class="category">
            <img src="https://via.placeholder.com/100?text=Fashion" alt="Fashion">
            <p>Fashion</p>
        </div>
        <div class="category">
            <img src="https://via.placeholder.com/100?text=Home" alt="Home">
            <p>Home</p>
        </div>
        <div class="category">
            <img src="https://via.placeholder.com/100?text=Beauty" alt="Beauty">
            <p>Beauty</p>
        </div>
    </section>

    <!-- Featured Products Section -->
    <section class="product-section">
        <h2>Featured Products</h2>
        <div class="product-grid">
            <% 
                // Dummy product data - can be replaced with backend logic later
                String[][] products = {
                    {"iPhone 14", "99999", "4.5", "10", "https://via.placeholder.com/300?text=iPhone+14"},
                    {"Dell Laptop", "59999", "4.2", "15", "https://via.placeholder.com/300?text=Dell+Laptop"},
                    {"Sony Headphones", "4999", "4.7", "20", "https://via.placeholder.com/300?text=Sony+Headphones"},
                    {"Men's Shirt", "1999", "4.0", "5", "https://via.placeholder.com/300?text=Men's+Shirt"},
                    {"Women's Dress", "2499", "4.3", "12", "https://via.placeholder.com/300?text=Women's+Dress"},
                    {"Smartwatch", "2999", "4.6", "8", "https://via.placeholder.com/300?text=Smartwatch"}
                };
                for (String[] product : products) {
            %>
            <div class="product-card">
                <img src="<%= product[4] %>" alt="<%= product[0] %>">
                <div class="product-info">
                    <div class="product-name"><%= product[0] %></div>
                    <div class="product-price">₹<%= product[1] %></div>
                    <div class="product-rating">★<%= product[2] %></div>
                </div>
                <div class="discount-badge"><%= product[3] %>% Off</div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <% } %>
        </div>
    </section>

    <!-- Deals of the Day Section -->
    <section class="deals-section">
        <div class="deals-header">
            <h2>Deals of the Day</h2>
            <div class="countdown" id="countdown"></div>
        </div>
        <div class="product-grid">
            <% 
                // Dummy deals data
                String[][] deals = {
                    {"Samsung Galaxy S23", "69999", "4.8", "25", "https://via.placeholder.com/300?text=Galaxy+S23"},
                    {"MacBook Air", "89999", "4.9", "30", "https://via.placeholder.com/300?text=MacBook+Air"},
                    {"Bose Earbuds", "14999", "4.6", "18", "https://via.placeholder.com/300?text=Bose+Earbuds"},
                    {"Jeans", "1499", "4.1", "10", "https://via.placeholder.com/300?text=Jeans"}
                };
                for (String[] deal : deals) {
            %>
            <div class="product-card">
                <img src="<%= deal[4] %>" alt="<%= deal[0] %>">
                <div class="product-info">
                    <div class="product-name"><%= deal[0] %></div>
                    <div class="product-price">₹<%= deal[1] %></div>
                    <div class="product-rating">★<%= deal[2] %></div>
                </div>
                <div class="discount-badge"><%= deal[3] %>% Off</div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <% } %>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-links">
            <div>
                <h4>Get to Know Us</h4>
                <ul>
                    <li>About Us</li>
                    <li>Careers</li>
                    <li>Press Releases</li>
                </ul>
            </div>
            <div>
                <h4>Make Money with Us</h4>
                <ul>
                    <li>Sell on E-Shop</li>
                    <li>Advertise Your Products</li>
                </ul>
            </div>
            <div>
                <h4>Let Us Help You</h4>
                <ul>
                    <li>Your Account</li>
                    <li>Returns Centre</li>
                    <li>Help</li>
                </ul>
            </div>
            <div>
                <h4>Policies</h4>
                <ul>
                    <li>Privacy Policy</li>
                    <li>Terms of Use</li>
                </ul>
            </div>
        </div>
        <div class="social-icons">
            <a href="#">📘</a>
            <a href="#">🐦</a>
            <a href="#">📸</a>
            <a href="#">▶️</a>
        </div>
        <p>&copy; 2026 E-Shop. All rights reserved.</p>
    </footer>

    <script>
        // Countdown Timer for Deals
        function countdown() {
            const endDate = new Date();
            endDate.setHours(23, 59, 59, 999); // End of today
            const now = new Date().getTime();
            const distance = endDate - now;

            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);

            document.getElementById('countdown').innerHTML = `${hours}h ${minutes}m ${seconds}s left`;

            if (distance < 0) {
                document.getElementById('countdown').innerHTML = "Deals Expired!";
            }
        }
        setInterval(countdown, 1000);
        countdown();

        // Add to Cart Functionality (Dummy)
        document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', () => {
                alert('Added to Cart!');
                // Update cart count (dummy)
                const cartCount = document.querySelector('.cart span');
                cartCount.textContent = parseInt(cartCount.textContent) + 1;
            });
        });
    </script>
</body>
</html>
