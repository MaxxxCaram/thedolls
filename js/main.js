document.addEventListener('DOMContentLoaded', function() {
    // Variables
    const navToggle = document.querySelector('.nav__toggle');
    const navMenu = document.querySelector('.nav__menu');
    const header = document.querySelector('.header');
    const navLinks = document.querySelectorAll('.nav__menu a');
    const headerLogo = document.querySelector('.header__logo img');

    // Toggle mobile menu
    navToggle.addEventListener('click', function() {
        navMenu.classList.toggle('active');
        navToggle.classList.toggle('active');
    });

    // Close menu when clicking on a menu item
    navLinks.forEach(link => {
        link.addEventListener('click', () => {
            navMenu.classList.remove('active');
            navToggle.classList.remove('active');
        });
    });

    // Header and logo scroll behavior
    window.addEventListener('scroll', () => {
        const scrollY = window.scrollY;
        
        // Header background change
        if (scrollY > 100) {
            header.style.backgroundColor = 'rgba(255, 255, 255, 0.95)';
            header.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
        } else {
            header.style.backgroundColor = 'var(--color-white)';
            header.style.boxShadow = 'var(--shadow)';
        }
        
        // Logo parallax effect
        if (scrollY < 300) {
            // Enhanced animation effect for larger logo
            const rotateValue = scrollY * 0.015;
            const scaleValue = 1 - (scrollY * 0.0008);
            
            // Add a subtle floating effect with a sine wave
            const translateY = Math.sin(scrollY * 0.01) * 3;
            
            headerLogo.style.transform = `
                rotate(${rotateValue}deg) 
                scale(${scaleValue > 0.85 ? scaleValue : 0.85}) 
                translateY(${translateY}px)
            `;
            
            // Adjust opacity for a fade effect
            const opacityValue = 1 - (scrollY * 0.001);
            headerLogo.style.opacity = opacityValue > 0.85 ? opacityValue : 0.85;
            
        } else {
            // Reset after 300px scroll with minimum scale
            headerLogo.style.transform = 'rotate(0) scale(0.85) translateY(0)';
            headerLogo.style.opacity = 0.85;
        }
    });

    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                const headerHeight = header.offsetHeight;
                const targetPosition = targetElement.getBoundingClientRect().top + window.pageYOffset;
                
                window.scrollTo({
                    top: targetPosition - headerHeight,
                    behavior: 'smooth'
                });
            }
        });
    });

    // Animation on scroll
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('fade-in');
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    // Observe elements to animate
    const animateElements = document.querySelectorAll('.section__title, .mission-pillar, .principle, .governance-pillar, .city');
    
    animateElements.forEach(element => {
        element.classList.add('animate-on-scroll');
        observer.observe(element);
    });

    // Add special animation for cities
    const cities = document.querySelectorAll('.city');
    cities.forEach((city, index) => {
        city.style.animationDelay = `${index * 0.2}s`;
    });

    // Add CSS for animations
    const style = document.createElement('style');
    style.textContent = `
        .animate-on-scroll {
            opacity: 0;
            transform: translateY(30px);
            transition: opacity 0.6s ease, transform 0.6s ease;
        }
        
        .animate-on-scroll.fade-in {
            opacity: 1;
            transform: translateY(0);
        }
        
        .city {
            animation-delay: 0s;
            transition-delay: var(--delay, 0s);
        }
    `;
    document.head.appendChild(style);
}); 