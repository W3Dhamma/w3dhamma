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
