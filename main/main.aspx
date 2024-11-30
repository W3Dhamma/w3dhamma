<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>W3Dhamma - Modern Buddhist Teachings</title>
    <meta name="description" content="W3Dhamma - Your gateway to modern Buddhist teachings including Abhidhamma, Sutta, and Vinaya.">
    <meta name="keywords" content="Buddhism, Abhidhamma, Sutta, Vinaya, Dhamma, Meditation, Mindfulness">
    <meta name="author" content="W3Dhamma">
    <meta property="og:title" content="W3Dhamma - Modern Buddhist Teachings">
    <meta property="og:description" content="Explore the profound teachings of Buddhism with W3Dhamma. Learn about Abhidhamma, Sutta, and Vinaya in the digital age.">
    <meta property="og:image" content="https://w3dhamma.com/og-image.jpg">
    <meta property="og:url" content="https://w3dhamma.com">
    <meta name="twitter:card" content="summary_large_image">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
   <style>
:root {
        --primary-color: #4a90e2;
        --secondary-color: #f39c12;
        --bg-color: #ffffff;
        --text-color: #333333;
        --nav-bg: #f8f9fa;
        --card-bg: #ffffff;
        --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

        .dark-mode {
            --primary-color: #64b5f6;
            --secondary-color: #ffd54f;
            --bg-color: #121212;
            --text-color: #e0e0e0;
            --nav-bg: #1e1e1e;
            --card-bg: #1e1e1e;
            --card-shadow: 0 4px 6px rgba(255, 255, 255, 0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            transition: background-color 0.3s, color 0.3s;
            overflow-x: hidden;
        }

        #particles-js {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 999991;
            pointer-events: none;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 2rem;
            background-color: var(--nav-bg);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1001;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        nav.hidden {
            transform: translateY(-100%);
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--primary-color);
            text-decoration: none;
            transition: color 0.3s;
        }

        .logo:hover {
            color: var(--secondary-color);
        }

        .nav-links {
            display: flex;
            flex-grow: 1;
            justify-content: center;
        }

        .nav-links a {
            flex: 1;
            text-align: center;
            padding: 0.5rem 1rem;
            color: var(--text-color);
            text-decoration: none;
            font-weight: 400;
            transition: color 0.3s;
            position: relative;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 0;
            background-color: var(--primary-color);
            transition: width 0.3s;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-right {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .search-container {
            position: relative;
            display: flex;
            align-items: center;
        }

        .search-toggle {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
            background-color: var(--bg-color);
            color: var(--text-color);
            border: 1px solid var(--text-color);
            font-size: 1.2rem;
        }

        .search-toggle:hover {
            box-shadow: 0 0 10px var(--primary-color);
        }

        .search-toggle:active {
            box-shadow: 0 0 15px var(--secondary-color);
        }

        .search-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: var(--bg-color);
            z-index: 1002;
            display: none;
            flex-direction: column;
            align-items: center;
            padding-top: 2rem;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }

        .search-overlay.active {
            display: flex;
            opacity: 1;
            visibility: visible;
        }

        #search {
            width: 80%;
            max-width: 600px;
            padding: 0.5rem 1rem;
            font-size: 1.2rem;
            border: none;
            border-bottom: 2px solid var(--primary-color);
            background-color: transparent;
            color: var(--text-color);
            margin-bottom: 2rem;
        }

        #search:focus {
            outline: none;
        }

        .search-close {
            position: absolute;
            top: 1.6rem;
            right: 1rem;
            font-size: 1.5rem;
            cursor: pointer;
            color: var(--text-color);
        }

        .search-results {
            width: 80%;
            max-width: 600px;
            max-height: calc(100% - 150px);
            overflow-y: auto;
        }

        .search-result {
            background-color: var(--card-bg);
            border-radius: 8px;
            padding: 1rem;
            margin-bottom: 1rem;
            box-shadow: var(--card-shadow);
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.3s ease, transform 0.3s ease;
        }

        .search-result.visible {
            opacity: 1;
            transform: translateY(0);
        }

        .search-result h3 {
            color: var(--primary-color);
            margin-bottom: 0.5rem;
        }

        .search-result p {
            margin-bottom: 1rem;
        }

        .learn-more {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: #052F2E;
            color: #3BCEBC;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .learn-more:hover {
            background-color: var(--secondary-color);
        }

        .dark-mode-toggle {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
            background-color: var(--bg-color);
            color: var(--text-color);
            border: 1px solid var(--text-color);
            font-size: 1.2rem;
        }

        .dark-mode-toggle:hover {
            box-shadow: 0 0 10px var(--primary-color);
        }

        .dark-mode-toggle:active {
            box-shadow: 0 0 15px var(--secondary-color);
        }

        .menu-toggle {
            display: none;
            background: none;
            font-size: 1.5rem;
            color: var(--text-color);
            cursor: pointer;
            transition: color 0.3s;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
            background-color: var(--bg-color);
            color: var(--text-color);
            border: 1px solid var(--text-color);
            font-size: 1.2rem;
        }

        .menu-toggle:hover {
            color: var(--primary-color);
        }

        .mobile-nav {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1003;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: var(--bg-color);
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }

        .mobile-nav.active {
            display: flex;
            opacity: 1;
            visibility: visible;
        }

        .mobile-nav a {
            color: var(--text-color);
            font-size: 1.5rem;
            margin: 1rem 0;
            text-decoration: none;
        }

        .mobile-nav-close {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 2rem;
            color: var(--text-color);
            cursor: pointer;
        }

        main {
            max-width: 100%;
            margin: 5rem auto 2rem;
            padding: 0 2rem;
            transition: opacity 0.3s ease;
        }

        section {
            margin-bottom: 4rem;
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.5s, transform 0.5s;
        }

        section.visible {
            opacity: 1;
            transform: translateY(0);
        }

        .home-section {
            border-radius: 8px;
            padding: 1.5rem;
            height: 200px;
            display: flex;
            flex-direction: column;
        }

        h1 {
            font-size: clamp(2rem, 2vw, 2.5rem);
            color: var(--primary-color);
            margin-bottom: 1rem;
        }

        h2 {
            font-size: clamp(1.5rem, 4vw, 1.8rem);
            color: var(--secondary-color);
            margin-bottom: 0.5rem;
        }

        p {
            font-size: clamp(1rem, 3vw, 1.1rem);
            line-height: 1.6;
            margin-bottom: 1rem;
        }

        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .card {
            background-color: var(--card-bg);
            border-radius: 8px;
            padding: 1.5rem;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s, box-shadow 0.3s;
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .card h2 h1 {
            margin-bottom: 1rem;
        }

        .card p {
            flex-grow: 1;
        }

        footer {
            background-color: var(--nav-bg);
            color: var(--text-color);
            padding: 2rem;
            margin-top: 4rem;
            transition: opacity 0.3s ease;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
        }

        .footer-section {
            background-color: var(--card-bg);
            border-radius: 8px;
            padding: 1.5rem;

            transition: transform 0.3s, box-shadow 0.3s;
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .footer-section h3 {
            color: var(--primary-color);
            margin-bottom: 1rem;
            font-size:;
        }

        .footer-section ul {
            list-style-type: none;
            padding: 0;
        }

        .footer-section ul li {
            margin-bottom: 0.5rem;
        }

        .footer-section ul li a {
            color: var(--text-color);
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-section ul li a:hover {
            color: var(--primary-color);
        }

        .content-hidden {
            opacity: 0;
            pointer-events: none;
        }

        .loader {
            border: 4px solid var(--bg-color);
            border-top: 4px solid var(--primary-color);
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
        }

@keyframes spin {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        .load-more {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #052F2E;
            color: #3BCEBC;
            text-align: center;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .load-more:hover {
            background-color: var(--secondary-color);
        }

@media (max-width: 768px) {
            .menu-toggle {
                display: flex;
            }
            .nav-links {
                display: none;
            }
            nav {
                padding: 1rem;
            }
            .logo {
                font-size: 1.5rem;
            }
            h1 {
                font-size: 2rem;
            }
            h2 {
                font-size: 1.5rem;
            }
            p {
                font-size: 0.95rem;
            }
        }

@media (max-width: 480px) {
            main {
                padding: 0 1rem;
            }
            h1 {
                font-size: 1.8rem;
            }
            h2 {
                font-size: 1.3rem;
            }
            p {
                font-size: 0.9rem;
            }
        }

@media (min-width: 1024px) {
            nav {
                padding: 1rem 4rem;
            }

            .nav-links {
                justify-content: flex-end;
            }

            .nav-links a {
                margin-left: 2rem;
            }

            .nav-right {
                margin-left: 2rem;
            }

        }

        ::selection {
            background-color: #052F2E;
            color: #3BCEBC;
        }

        /* New styles for animations */
        .fade-out {
            opacity: 0;
            transition: opacity 0.3s ease-out;
        }

        .fade-in {
            opacity: 1;
            transition: opacity 0.3s ease-in;
        }

        .slide-out {
            transform: translateY(-100%);
            transition: transform 0.3s ease-out;
        }

        .slide-in {
            transform: translateY(0);
            transition: transform 0.3s ease-in;
        }

        /* Custom search animation */
@keyframes searchPulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        .search-toggle.searching {
            animation: searchPulse 1s infinite;
        }

        .form-container {
            background-color: var(--card-bg);
            border-radius: 8px;
            padding: 1.5rem;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s, box-shadow 0.3s;
        }

@keyframes fadeIn {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
        }

        .form-container form {
            display: flex;
            flex-direction: column;
        }

        .form-container input,
        .form-container textarea {
            margin-bottom: 1rem;
            padding: 0.75rem;
            background-color: var(--bg-color);
            border: 1px solid var(--text-color);
            border-radius: 5px;
            font-size: 1rem;
            color: var(--text-color);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container input:focus,
        .form-container textarea:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(74, 144, 226, 0.5);
        }

        .form-container textarea {
            min-height: 100px;
            resize: vertical;
        }

        .form-container button {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 0.75rem;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.1s ease;
        }

        .form-container button:hover {
            background-color: var(--secondary-color);
        }

        .form-container button:active {
            transform: scale(0.98);
        }

        .message {
            text-align: center;
            margin-top: 1rem;
            padding: 0.75rem;
            border-radius: 5px;
            opacity: 0;
            transform: translateY(10px);
            transition: opacity 0.3s ease, transform 0.3s ease;
        }

        .success-message {
            background-color: rgba(76, 175, 80, 0.1);
            color: #4CAF50;
        }

        .error-message {
            background-color: rgba(244, 67, 54, 0.1);
            color: #F44336;
        }

        .show-message {
            opacity: 1;
            transform: translateY(0);
        }

@media (max-width: 480px) {
            .form-container {
                padding: 1rem;
            }

            .form-container h2 {
                font-size: 1.5rem;
            }

            .form-container input,
            .form-container textarea,
            .form-container button {
                font-size: 0.9rem;
            }
        }

        /* New styles for search animation */
        .search-animation {
            width: 100%;
            max-width: 300px;
            margin: 0 auto;
            display: none;
        }

        .search-animation.active {
            display: block;
        }
   
   </style>
   </head>
<body>
    <div id="particles-js"></div>
    <nav>
        <a href="#" class="logo">W3Dhamma</a>
        <div class="nav-links">
            <a href="#home">Home</a>
            <a href="#abhidhamma">Abhidhamma</a>
            <a href="#sutta">Sutta</a>
            <a href="#vinaya">Vinaya</a>
            <a href="#changelog">Changelog</a>
        </div>
        <div class="nav-right">
            <button class="search-toggle" aria-label="Toggle search"><i class="fas fa-search"></i></button>
            <button class="dark-mode-toggle" aria-label="Toggle dark mode"><i class="fas fa-sun"></i></button>
            <button class="menu-toggle" aria-label="Toggle navigation menu"><i class="fas fa-bars"></i></button>
        </div>
    </nav>

    <div class="search-overlay">
        <button class="search-close" aria-label="Close search"><i class="fas fa-times"></i></button>
        <input type="search" id="search" placeholder="Search...">
        <video class="search-animation" loop muted>
            <source src="search-animation.webm" type="video/webm">
            Your browser does not support the video tag.
        </video>
        <div id="search-message"></div>
        <div class="search-results"></div>
        <button class="load-more" style="display: none;">Load More</button>
    </div>

    <div class="mobile-nav">
        <button class="mobile-nav-close" aria-label="Close menu"><i class="fas fa-times"></i></button>
        <a href="#home">Home</a>
        <a href="#abhidhamma">Abhidhamma</a>
        <a href="#sutta">Sutta</a>
        <a href="#vinaya">Vinaya</a>
        <a href="#changelog">Changelog</a>
    </div>

    <main>
        <section id="home" class="fade-in">
            <div class="home-section">
                <h3>About W3Dhamma</h3>
                <p class="font">
                    W3Dhamma is a modern platform dedicated to making Buddhist teachings accessible in the digital age. We offer comprehensive resources on Abhidhamma, Sutta, and Vinaya, aiming to bridge ancient wisdom with contemporary understanding.
                </p>
            </div>
            <pre>




            </pre>
            <div class="card-container">
                <div class="card">
                    <h2>Abhidhamma</h2>
                    <p>
                        Dive deep into the philosophical and psychological aspects of Buddhism.
                    </p>
                </div>
                <div class="card">
                    <h2>Sutta</h2>
                    <p>
                        Explore the discourses of the Buddha, containing core teachings and practices.
                    </p>
                </div>
                <div class="card">
                    <h2>Vinaya</h2>
                    <p>
                        Learn about the monastic code of conduct and its relevance to lay practitioners.
                    </p>
                </div>
            </div>
        </section>

        <section id="abhidhamma">
            <h1>Abhidhamma</h1>
            <div class="card-container">
                <div class="card">
                    <h2>Introduction to Abhidhamma</h2>
                    <p>
                        Abhidhamma, meaning 'higher doctrine', is the third basket of the Tipitaka, the canonical scriptures of Buddhism. It offers a detailed psychological and philosophical analysis of the nature of reality.
                    </p>
                </div>
                <div class="card">
                    <h2>The Seven Books of Abhidhamma</h2>
                    <p>
                        The Abhidhamma Pitaka consists of seven books: Dhammasangani, Vibhanga, Dhatukatha, Puggalapannatti, Kathavatthu, Yamaka, and Patthana. Each book explores different aspects of the Dhamma in great detail.
                    </p>
                </div>
                <div class="card">
                    <h2>Key Concepts in Abhidhamma</h2>
                    <p>
                        Some key concepts in Abhidhamma include the analysis of consciousness (citta), mental factors (cetasika), matter (rupa), and Nibbana. It also explores the concept of dependent origination (paticca samuppada) in great depth.
                    </p>
                </div>
            </div>
        </section>

        <section id="sutta">
            <h1>Sutta</h1>
            <div class="card-container">
                <div class="card">
                    <h2>Introduction to Sutta</h2>
                    <p>
                        The Sutta Pitaka contains the discourses of the Buddha and his chief disciples, forming the doctrinal foundation of Theravada Buddhism. These teachings cover a wide range of topics, from practical advice for daily life to profound philosophical insights.
                    </p>
                </div>
                <div class="card">
                    <h2>Major Collections</h2>
                    <p>
                        The Sutta Pitaka is divided into five nikayas (collections): Digha Nikaya, Majjhima Nikaya, Samyutta Nikaya, Anguttara Nikaya, and Khuddaka Nikaya. Each collection contains suttas grouped by various criteria such as length or subject matter.
                    </p>
                </div>
                <div class="card">
                    <h2>Key Suttas</h2>
                    <p>
                        Some of the most famous suttas include the Dhammacakkappavattana Sutta (Setting the Wheel of Dhamma in Motion), the Maha-satipatthana Sutta (The Great Discourse on the Foundations of Mindfulness), and the Metta Sutta (Discourse on Loving-Kindness).
                    </p>
                </div>
            </div>
        </section>

        <section id="vinaya">
            <h1>Vinaya</h1>
            <div class="card-container">
                <div class="card">
                    <h2>Introduction to Vinaya</h2>
                    <p>
                        The Vinaya Pitaka is the division of the Tripitaka that contains the rules and procedures that govern the Buddhist monastic community, or sangha. It not only defines rules for monks and nuns but also provides solutions for all kinds of situations and includes stories of the Buddha and his disciples.
                    </p>
                </div>
                <div class="card">
                    <h2>Structure of the Vinaya</h2>
                    <p>
                        The Vinaya Pitaka is divided into three parts: the Suttavibhanga, the Khandhaka, and the Parivara. The Suttavibhanga contains the patimokkha rules for monks and nuns, along with their origin stories. The Khandhaka deals with other aspects of monastic life, while the Parivara serves as a summary and study guide.
                    </p>
                </div>
                <div class="card">
                    <h2>Relevance for Lay Practitioners</h2>
                    <p>
                        While the Vinaya primarily concerns monastic discipline, many of its ethical principles and guidelines for harmonious community living are valuable for lay practitioners as well. Understanding the Vinaya can deepen one's appreciation of the monastic tradition and inspire a more disciplined approach to spiritual practice.
                    </p>
                </div>
            </div>
        </section>

        <section id="changelog">
            <h1>Changelog</h1>
            <div class="card-container">
                <div class="card">
                    <h2>Version 1.0.0 (2023-06-01)</h2>
                    <ul>
                        <li>Initial launch of W3Dhamma</li>
                        <li>Added sections for Abhidhamma, Sutta, and Vinaya</li>
                        <li>Implemented responsive design for mobile and desktop</li>
                    </ul>
                </div>
                <div class="card">
                    <h2>Version 1.1.0 (2023-06-15)</h2>
                    <ul>
                        <li>Added space-themed animated background</li>
                        <li>Implemented light/dark mode toggle</li>
                        <li>Added search functionality across all sections</li>
                    </ul>
                </div>
                <div class="card">
                    <h2>Version 1.2.0 (2023-07-01)</h2>
                    <ul>
                        <li>Improved accessibility features</li>
                        <li>Added more content to Abhidhamma and Sutta sections</li>
                        <li>Optimized performance for faster loading times</li>
                    </ul>
                </div>
            </div>
        </section>
    </main>
    <div class="form-container">
        <h2>Contact Us</h2>
        <form id="contactForm" action="https://formspree.io/f/xanyweyr" method="POST">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
        </form>
        <div id="successMessage" class="message success-message">
            Thank you! We'll contact you soon.
        </div>
        <div id="errorMessage" class="message error-message">
            Oops! Something went wrong. Please try again.
        </div>
    </div>
    <footer>
        <div class="card-container">
            <div class="footer-section">
                <h3>About W3Dhamma</h3>
                <p class="font">
                    W3Dhamma is a modern platform dedicated to making Buddhist teachings accessible in the digital age. We offer comprehensive resources on Abhidhamma, Sutta, and Vinaya, aiming to bridge ancient wisdom with contemporary understanding.
                </p>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#abhidhamma">Abhidhamma</a></li>
                    <li><a href="#sutta">Sutta</a></li>
                    <li><a href="#vinaya">Vinaya</a></li>
                    <li><a href="#changelog">Changelog</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Connect</h3>
                <ul>
                    <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                    <li><a href="#"><i class="far fa-envelope"></i> Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>
        <div style="text-align: center; "class="copyright">
            &copy; 2024 W3Dhamma. All rights reserved.
        </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
    <script src="assets/js/script.js"></script>
    <script>
const particlesConfig = {
    particles: {
        number: {
            value: 100,
            density: {
                enable: true,
                value_area: 800
            }
        },
        color: {
            value: ["#FF0000",
                "#00FF00",
                "#0000FF",
                "#FFFF00",
                "#FF00FF",
                "#00FFFF",
                "#FFA500",
                "#800080",
                "#008000",
                "#FFC0CB"]
        },
        shape: {
            type: "circle"
        },
        opacity: {
            value: 0.5,
            random: true,
            anim: {
                enable: true,
                speed: 1,
                opacity_min: 0.1,
                sync: false
            }
        },
        size: {
            value: 3,
            random: true,
            anim: {
                enable: true,
                speed: 2,
                size_min: 0.1,
                sync: false
            }
        },
        line_linked: {
            enable: false
        },
        move: {
            enable: true,
            speed: 0.5,
            direction: "none",
            random: true,
            straight: false,
            out_mode: "out",
            bounce: false
        }
    },
    interactivity: {
        detect_on: "canvas",
        events: {
            onhover: {
                enable: true,
                mode: "bubble"
            },
            onclick: {
                enable: true,
                mode: "push"
            },
            resize: true
        },
        modes: {
            bubble: {
                distance: 200,
                size: 6,
                duration: 2,
                opacity: 0.8,
                speed: 3
            },
            push: {
                particles_nb: 4
            }
        }
    },
    retina_detect: true
};

particlesJS('particles-js', particlesConfig);

// Dark mode toggle
const darkModeToggle = document.querySelector('.dark-mode-toggle');
const body = document.body;

body.classList.add('dark-mode');
updateDarkModeIcon();

darkModeToggle.addEventListener('click', () => {
    body.classList.toggle('dark-mode');
    updateDarkModeIcon();
});

function updateDarkModeIcon() {
    const isDarkMode = body.classList.contains('dark-mode');
    darkModeToggle.innerHTML = isDarkMode ? '<i class="fas fa-sun"></i>': '<i class="fas fa-moon"></i>';
}

// Navigation and content visibility
const nav = document.querySelector('nav');
const pageContent = document.querySelector('main');
const footer = document.querySelector('footer');
const menuToggle = document.querySelector('.menu-toggle');
const mobileNav = document.querySelector('.mobile-nav');
const mobileNavClose = document.querySelector('.mobile-nav-close');
const searchToggle = document.querySelector('.search-toggle');
const searchOverlay = document.querySelector('.search-overlay');
const searchClose = document.querySelector('.search-close');
const searchInput = document.getElementById('search');
const searchResults = document.querySelector('.search-results');
const searchMessage = document.getElementById('search-message');
const loadMoreButton = document.querySelector('.load-more');
const sections = document.querySelectorAll('section');

function hideContent() {
    nav.classList.add('hidden');
    pageContent.classList.add('content-hidden');
    footer.classList.add('content-hidden');
}

function showContent() {
    nav.classList.remove('hidden');
    pageContent.classList.remove('content-hidden');
    footer.classList.remove('content-hidden');
}

menuToggle.addEventListener('click', () => {
    mobileNav.classList.add('active');
    hideContent();
});

mobileNavClose.addEventListener('click', () => {
    mobileNav.classList.remove('active');
    showContent();
});

searchToggle.addEventListener('click', () => {
    searchOverlay.classList.add('active');
    hideContent();
    searchInput.focus();
});

searchClose.addEventListener('click', () => {
    searchOverlay.classList.remove('active');
    showContent();
    searchInput.value = '';
    searchResults.innerHTML = '';
    searchMessage.textContent = '';
    loadMoreButton.style.display = 'none';
});

// Search functionality
let allResults = [];
let currentPage = 1;
const resultsPerPage = 10;

searchInput.addEventListener('keypress', (e) => {
    if (e.key === 'Enter') {
        performSearch();
    }
});

searchToggle.addEventListener('click', performSearch);

function performSearch() {
    const searchTerm = searchInput.value.toLowerCase();
    searchResults.innerHTML = '';
    searchMessage.textContent = 'Searching...';
    loadMoreButton.style.display = 'none';

    if (searchTerm.trim() === '') {
        searchMessage.textContent = '';
        return;
    }

    const searchAnimation = document.querySelector('.search-animation');
    searchAnimation.classList.add('active');
    searchAnimation.play();

    setTimeout(() => {
        allResults = [];
        sections.forEach(section => {
            const text = section.textContent.toLowerCase();
            if (text.includes(searchTerm)) {
                const title = section.querySelector('h1, h2').textContent;
                const snippet = text.substring(text.indexOf(searchTerm) - 50, text.indexOf(searchTerm) + 50);
                allResults.push({
                    title: title,
                    snippet: snippet,
                    id: section.id
                });
            }
        });

        if (allResults.length === 0) {
            searchMessage.textContent = 'No results found.';
        } else {
            searchMessage.textContent = `${allResults.length} results found.`;
            currentPage = 1;
            displayResults();
        }

        searchAnimation.classList.remove('active');
        searchAnimation.pause();
        searchAnimation.currentTime = 0;
    },
        4000);
}

function displayResults() {
    const startIndex = (currentPage - 1) * resultsPerPage;
    const endIndex = startIndex + resultsPerPage;
    const pageResults = allResults.slice(startIndex,
        endIndex);

    pageResults.forEach((result, index) => {
        const resultElement = document.createElement('div');
        resultElement.className = 'search-result';
        resultElement.innerHTML = `
        <h3>${result.title}</h3>
        <p>${highlightText(result.snippet, searchInput.value)}</p>
        <a href="#${result.id}" class="learn-more">Learn More</a>
        `;
        searchResults.appendChild(resultElement);
        setTimeout(() => resultElement.classList.add('visible'), 50 * index);
    });

    loadMoreButton.style.display = endIndex < allResults.length ? 'block': 'none';
}

loadMoreButton.addEventListener('click', () => {
    currentPage++;
    loadMoreButton.style.display = 'none';
    const loader = document.createElement('div');
    loader.className = 'loader';
    searchResults.appendChild(loader);
    setTimeout(() => {
        searchResults.removeChild(loader);
        displayResults();
    }, 1000);
});

function highlightText(text, term) {
    const regex = new RegExp(`(${term})`,
        'gi');
    return text.replace(regex,
        '<mark>$1</mark>');
}

// Smooth scroll for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
            searchOverlay.classList.remove('active');
            mobileNav.classList.remove('active');
            showContent();
            targetElement.scrollIntoView({
                behavior: 'smooth'
            });
        }
    });
});

// Intersection Observer for fade-in effect
const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('visible');
        }
    });
}, {
    threshold: 0.1
});

document.querySelectorAll('section').forEach(section => {
    observer.observe(section);
});

// Contact form submission
const form = document.getElementById('contactForm');
const successMessage = document.getElementById('successMessage');
const errorMessage = document.getElementById('errorMessage');

form.addEventListener('submit', async (e) => {
    e.preventDefault();
    const formData = new FormData(form);

    try {
        const response = await fetch(form.action,
            {
                method: 'POST',
                body: formData,
                headers: {
                    'Accept': 'application/json'
                }
            });

        if (response.ok) {
            form.reset();
            successMessage.classList.add('show-message');
            setTimeout(() => {
                successMessage.classList.remove('show-message');
            }, 5000);
        } else {
            throw new Error('Form submission failed');
        }
    } catch (error) {
        errorMessage.classList.add('show-message');
        setTimeout(() => {
            errorMessage.classList.remove('show-message');
        }, 5000);
    }
});
    
    
        // Smooth animations
        document.addEventListener('DOMContentLoaded', () => {
            const animatedElements = document.querySelectorAll('.card, .footer-section, .form-container');

            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.transition = 'opacity 0.5s ease-out, transform 0.5s ease-out';
                        entry.target.style.opacity = '1';
                        entry.target.style.transform = 'translateY(0)';
                    }
                });
            }, {
                threshold: 0.1
            });

            animatedElements.forEach(el => {
                el.style.opacity = '0';
                el.style.transform = 'translateY(20px)';
                observer.observe(el);
            });
        });
    </script>
</body>
</html>
