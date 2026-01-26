<%-- index.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix - Watch TV Shows Online, Watch Movies Online</title>
    <link rel="icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.png">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            background: #000;
            color: #fff;
            line-height: 1.4;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 4%;
        }

        /* Hero */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.75)),
                        url('https://assets.nflxext.com/ffe/siteui/vlv3/3d31dac6-aaf0-4e6e-8bd7-e16c5d9cd9a3/web/US-en-20260119-TRIFECTA-perspective_546af087-e785-4b2f-90d2-ca817a6b9123_large.jpg');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            position: relative;
            border-bottom: 8px solid #222;
        }

        .navbar {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            padding: 25px 4% 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10;
        }

        .logo {
            width: 110px;
        }

        .btn {
            background: #e50914;
            color: white;
            padding: 8px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background: #f40612;
        }

        .hero-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            max-width: 720px;
            width: 90%;
        }

        .hero-title {
            font-size: clamp(2.5rem, 5vw, 3.5rem);
            font-weight: 900;
            margin-bottom: 1rem;
        }

        .hero-subtitle {
            font-size: clamp(1.3rem, 3vw, 1.7rem);
            margin: 0.8rem 0 1.5rem;
        }

        .hero-text {
            font-size: clamp(1.1rem, 2.5vw, 1.35rem);
            margin-bottom: 1.8rem;
        }

        .form {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 12px;
            max-width: 720px;
            margin: 0 auto;
        }

        .form input {
            flex: 1;
            min-width: 300px;
            padding: 20px 18px;
            font-size: 1.1rem;
            background: rgba(20,20,20,0.7);
            border: 1px solid #8c8c8c;
            border-radius: 4px;
            color: white;
        }

        .form button {
            background: #e50914;
            color: white;
            padding: 18px 32px;
            font-size: 1.6rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            white-space: nowrap;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .form button:hover {
            background: #f40612;
        }

        /* Features */
        .feature {
            padding: 80px 4%;
            border-bottom: 8px solid #222;
        }

        .feature-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 60px;
        }

        .text {
            flex: 1;
            min-width: 320px;
        }

        .text h2 {
            font-size: clamp(2.5rem, 5vw, 3.2rem);
            margin-bottom: 1.2rem;
        }

        .text p {
            font-size: clamp(1.3rem, 3vw, 1.65rem);
        }

        .media {
            flex: 1;
            text-align: center;
        }

        .media img {
            max-width: 100%;
            height: auto;
        }

        /* FAQ */
        .faq {
            padding: 80px 4%;
            border-bottom: 8px solid #222;
        }

        .faq h2 {
            text-align: center;
            font-size: clamp(2.5rem, 5vw, 3.2rem);
            margin-bottom: 2.5rem;
        }

        .faq-item {
            background: #2d2d2d;
            margin-bottom: 10px;
        }

        .faq-q {
            padding: 22px 30px;
            font-size: 1.7rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
        }

        .faq-a {
            display: none;
            padding: 0 30px 28px;
            font-size: 1.45rem;
        }

        .faq-a.show {
            display: block;
        }

        /* Footer */
        footer {
            padding: 80px 4% 40px;
            color: #777;
            font-size: 1rem;
        }

        footer a {
            color: #777;
            text-decoration: underline;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 20px;
            margin: 2.5rem 0;
        }

        @media (max-width: 950px) {
            .feature-inner {
                flex-direction: column;
                text-align: center;
            }
        }
    </style>
</head>
<body>

    <div class="hero">
        <div class="navbar">
            <img src="https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png" alt="Netflix" class="logo">
            <button class="btn">Sign In</button>
        </div>

        <div class="hero-content">
            <h1 class="hero-title">Unlimited movies, TV shows, and more</h1>
            <p class="hero-subtitle">Watch anywhere. Cancel anytime.</p>
            <p class="hero-text">Ready to watch? Enter your email to create or restart your membership.</p>

            <form class="form">
                <input type="email" placeholder="Email address" required>
                <button type="submit">Get Started ></button>
            </form>
        </div>
    </div>

    <!-- Feature 1 -->
    <section class="feature">
        <div class="container feature-inner">
            <div class="text">
                <h2>Enjoy on your TV</h2>
                <p>Watch on Smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.</p>
            </div>
            <div class="media">
                <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/tv.png" alt="TV">
            </div>
        </div>
    </section>

    <!-- Feature 2 -->
    <section class="feature">
        <div class="container feature-inner">
            <div class="media">
                <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/mobile-0819.jpg" alt="Mobile devices">
            </div>
            <div class="text">
                <h2>Download your shows to watch offline</h2>
                <p>Save your favorites easily and always have something to watch.</p>
            </div>
        </div>
    </section>

    <!-- FAQ -->
    <section class="faq">
        <div class="container">
            <h2>Frequently Asked Questions</h2>

            <div class="faq-item">
                <div class="faq-q">What is Netflix? <span>+</span></div>
                <div class="faq-a">
                    Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries and more – on thousands of internet-connected devices.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-q">How much does Netflix cost? <span>+</span></div>
                <div class="faq-a">
                    Watch Netflix on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from $6.99 to $22.99 a month. No extra costs, no contracts.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-q">Where can I watch? <span>+</span></div>
                <div class="faq-a">
                    Watch anywhere, anytime, on an unlimited number of devices. Sign in with your Netflix account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Netflix app.
                </div>
            </div>

            <div style="text-align: center; margin: 4rem 0 2rem;">
                <p style="font-size: 1.4rem; margin-bottom: 1.8rem;">Ready to watch? Enter your email to create or restart your membership.</p>
                <form class="form" style="max-width: 720px; margin: 0 auto;">
                    <input type="email" placeholder="Email address" required>
                    <button type="submit">Get Started ></button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>Questions? Call <a href="tel:1-844-505-2993">1-844-505-2993</a></p>
            <div class="footer-grid">
                <a href="#">FAQ</a>
                <a href="#">Help Center</a>
                <a href="#">Account</a>
                <a href="#">Media Center</a>
                <a href="#">Investor Relations</a>
                <a href="#">Jobs</a>
                <a href="#">Ways to Watch</a>
                <a href="#">Terms of Use</a>
                <a href="#">Privacy</a>
                <a href="#">Cookie Preferences</a>
                <a href="#">Corporate Information</a>
                <a href="#">Contact Us</a>
            </div>
            <p>Netflix Clone – For learning purposes only</p>
        </div>
    </footer>

    <script>
        document.querySelectorAll('.faq-q').forEach(item => {
            item.addEventListener('click', () => {
                const answer = item.nextElementSibling;
                answer.classList.toggle('show');
                const sign = item.querySelector('span');
                sign.textContent = answer.classList.contains('show') ? '−' : '+';
            });
        });
    </script>

</body>
</html>
