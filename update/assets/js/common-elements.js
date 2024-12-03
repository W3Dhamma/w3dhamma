document.addEventListener('DOMContentLoaded', function() {
    insertNavigation();
    insertMainContent();
    insertFooter();
});

function insertNavigation() {
    const nav = document.createElement('nav');
    nav.innerHTML = `
        <a href="#" class="logo">W3Dhamma</a>
        <div class="nav-links">
            <a href="#" data-href="home">Home</a>
            <a href="#" data-href="about">About</a>
            <a href="#" data-href="services">Services</a>
            <a href="#" data-href="contact">Contact</a>
        </div>
        <div class="nav-right">
            <div class="search-container">
                <div class="search-toggle"><i class="fas fa-search"></i></div>
            </div>
            <div class="dark-mode-toggle"><i class="fas fa-moon"></i></div>
            <div class="menu-toggle"><i class="fas fa-bars"></i></div>
        </div>
    `;
    document.body.insertBefore(nav, document.body.firstChild);

    const mobileNav = document.createElement('div');
    mobileNav.className = 'mobile-nav';
    mobileNav.innerHTML = `
        <div class="mobile-nav-close"><i class="fas fa-times"></i></div>
        <a href="#" data-href="home">Home</a>
        <a href="#" data-href="about">About</a>
        <a href="#" data-href="services">Services</a>
        <a href="#" data-href="contact">Contact</a>
    `;
    document.body.insertBefore(mobileNav, nav.nextSibling);

    const searchOverlay = document.createElement('div');
    searchOverlay.className = 'search-overlay';
    searchOverlay.innerHTML = `
        <div class="search-close"><i class="fas fa-times"></i></div>
        <input type="text" id="search" placeholder="Search...">
        <img src="assets/images/search-animation.gif" alt="Searching..." class="search-animation">
        <div id="search-message"></div>
        <div class="search-results"></div>
        <button class="load-more" style="display: none;">Load More</button>
    `;
    document.body.insertBefore(searchOverlay, mobileNav.nextSibling);
}

function insertMainContent() {
    const main = document.createElement('main');
    main.innerHTML = `
        <section id="home" class="home-section">
            <h1>Welcome to W3Dhamma</h1>
            <p>Discover the path to enlightenment through web development.</p>
        </section>

        <section id="about">
            <h2>About W3Dhamma</h2>
            <p>W3Dhamma is your guide to mastering web development with a zen-like approach. We combine modern web technologies with timeless wisdom to create harmonious and effective digital experiences.</p>
        </section>

        <section id="services">
            <h2>Our Services</h2>
            <div class="card-container">
                <div class="card">
                    <h3>Web Design</h3>
                    <p>Create beautiful and functional websites that resonate with your audience.</p>
                </div>
                <div class="card">
                    <h3>Front-end Development</h3>
                    <p>Build responsive and interactive user interfaces using modern technologies.</p>
                </div>
                <div class="card">
                    <h3>Back-end Development</h3>
                    <p>Develop robust server-side applications and APIs to power your web projects.</p>
                </div>
            </div>
        </section>

        <section id="contact">
            <h2>Contact Us</h2>
            <div class="form-container">
                <form id="contactForm" action="/submit-form" method="POST">
                    <input type="text" name="name" placeholder="Your Name" required>
                    <input type="email" name="email" placeholder="Your Email" required>
                    <textarea name="message" placeholder="Your Message" required></textarea>
                    <button type="submit">Send Message</button>
                </form>
                <div id="successMessage" class="message success-message">Your message has been sent successfully!</div>
                <div id="errorMessage" class="message error-message">There was an error sending your message. Please try again.</div>
            </div>
        </section>
    `;
    document.body.insertBefore(main, document.body.lastElementChild);
}

function insertFooter() {
    const footer = document.createElement('footer');
    footer.innerHTML = `
        <div class="footer-content">
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#" data-href="home">Home</a></li>
                    <li><a href="#" data-href="about">About</a></li>
                    <li><a href="#" data-href="services">Services</a></li>
                    <li><a href="#" data-href="contact">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Connect With Us</h3>
                <ul>
                    <li><a href="#" data-href="facebook"><i class="fab fa-facebook"></i> Facebook</a></li>
                    <li><a href="#" data-href="twitter"><i class="fab fa-twitter"></i> Twitter</a></li>
                    <li><a href="#" data-href="linkedin"><i class="fab fa-linkedin"></i> LinkedIn</a></li>
                    <li><a href="#" data-href="github"><i class="fab fa-github"></i> GitHub</a></li>
                </ul>
            </div>
        </div>
        <div class="copyright">
            <p>&copy; ${new Date().getFullYear()} W3Dhamma. All rights reserved.</p>
        </div>
    `;
    document.body.appendChild(footer);
}

