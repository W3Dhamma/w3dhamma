import './darkMode.js';
import './navigation.js';
import './search.js';
import './animations.js';
import './contactForm.js';
import './particles.js';
import './handleLinks.js';

document.addEventListener('DOMContentLoaded', function() {
    // Initialize particles.js
    particlesJS('particles-js', {
        // Your particles.js configuration
    });

    // Apply dark mode by default
    const darkModeToggle = document.querySelector('.dark-mode-toggle');
    if (darkModeToggle) {
        darkModeToggle.click();
    }

    // Initialize other components
    initializeSearch();
    initializeContactForm();
    initializeAnimations();

    console.log('W3Dhamma JavaScript initialized');
});

function initializeSearch() {
    // Search functionality initialization
}

function initializeContactForm() {
    const form = document.getElementById('contactForm');
    const successMessage = document.getElementById('successMessage');
    const errorMessage = document.getElementById('errorMessage');

    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);

        try {
            const response = await fetch(form.action, {
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
}

function initializeAnimations() {
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

    const animatedElements = document.querySelectorAll('.card, .footer-section, .form-container');

    animatedElements.forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        observer.observe(el);
    });
}

