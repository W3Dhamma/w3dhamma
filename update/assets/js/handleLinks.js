document.addEventListener('DOMContentLoaded', () => {
    document.body.addEventListener('click', (e) => {
        if (e.target.tagName === 'A' && e.target.getAttribute('href') === '#') {
            e.preventDefault();
            const href = e.target.getAttribute('data-href');
            
            if (href === 'abhidhamma' || href === 'sutta' || href === 'vinaya' || href === 'changelog') {
                // Scroll to the section
                const section = document.getElementById(href);
                if (section) {
                    section.scrollIntoView({ behavior: 'smooth' });
                } else {
                    window.location.href = 'https://w3dhamma.github.io/w3demo/error';
                }
            } else {
                // Redirect to error page for undefined links
                window.location.href = 'https://w3dhamma.github.io/w3demo/error';
            }
        }
    });
});

