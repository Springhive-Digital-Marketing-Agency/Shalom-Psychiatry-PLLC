document.addEventListener('DOMContentLoaded', () => {
    
    // --- Sticky Header ---
    const header = document.getElementById('header');
    
    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });

    // --- Mobile Menu Toggle ---
    const mobileToggle = document.getElementById('mobile-toggle');
    const mobileMenu = document.getElementById('mobile-menu');
    const mobileLinks = document.querySelectorAll('.mobile-nav .nav-link');

    mobileToggle.addEventListener('click', () => {
        mobileMenu.classList.toggle('active');
        document.body.style.overflow = mobileMenu.classList.contains('active') ? 'hidden' : '';
    });

    // Close menu when a link is clicked
    mobileLinks.forEach(link => {
        link.addEventListener('click', () => {
            mobileMenu.classList.remove('active');
            document.body.style.overflow = '';
        });
    });

    // --- Scroll Reveal Animations ---
    const revealElements = document.querySelectorAll('.reveal');

    const revealObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                // Optional: Stop observing once revealed
                // observer.unobserve(entry.target);
            }
        });
    }, {
        root: null,
        threshold: 0.15, // Trigger when 15% of the element is visible
        rootMargin: "0px 0px -50px 0px" // Slightly offset bottom
    });

    revealElements.forEach(el => revealObserver.observe(el));

    // --- Testimonial Carousel (Auto Slide & Loop) ---
    const track = document.getElementById('testimonialTrack');
    const slides = document.querySelectorAll('.testi-slide');
    const dots = document.querySelectorAll('.carousel-dots .dot');
    const prevBtn = document.getElementById('testiPrev');
    const nextBtn = document.getElementById('testiNext');
    let currentSlide = 0;
    let autoPlayTimer = null;
    const autoPlayInterval = 4500; // 4.5 seconds per slide

    function goToSlide(index) {
        if (!slides.length || !track) return;

        // Deactivate current slide
        slides[currentSlide].classList.remove('active');
        if (dots[currentSlide]) dots[currentSlide].classList.remove('active');

        // Infinite loop indexing (0 -> 1 -> 2 -> 3 -> 0 ...)
        currentSlide = (index + slides.length) % slides.length;

        // Slide the track
        track.style.transform = `translateX(-${currentSlide * 100}%)`;

        // Activate new slide
        slides[currentSlide].classList.add('active');
        if (dots[currentSlide]) dots[currentSlide].classList.add('active');
    }

    function nextSlide() {
        goToSlide(currentSlide + 1);
    }

    function prevSlide() {
        goToSlide(currentSlide - 1);
    }

    if (nextBtn) nextBtn.addEventListener('click', () => {
        nextSlide();
        resetTimer();
    });

    if (prevBtn) prevBtn.addEventListener('click', () => {
        prevSlide();
        resetTimer();
    });

    dots.forEach((dot, idx) => {
        dot.addEventListener('click', () => {
            goToSlide(idx);
            resetTimer();
        });
    });

    // Auto Play loop
    function startTimer() {
        stopTimer();
        if (slides.length > 1) {
            autoPlayTimer = setInterval(nextSlide, autoPlayInterval);
        }
    }

    function stopTimer() {
        if (autoPlayTimer) {
            clearInterval(autoPlayTimer);
            autoPlayTimer = null;
        }
    }

    function resetTimer() {
        stopTimer();
        startTimer();
    }

    // Start auto-slide immediately
    startTimer();

    // Pause on hover & touch swipe support
    const carouselContainer = document.querySelector('.testimonial-carousel-container');
    if (carouselContainer) {
        carouselContainer.addEventListener('mouseenter', stopTimer);
        carouselContainer.addEventListener('mouseleave', startTimer);
        
        let touchStartX = 0;
        let touchEndX = 0;
        
        carouselContainer.addEventListener('touchstart', (e) => {
            touchStartX = e.changedTouches[0].screenX;
            stopTimer();
        }, { passive: true });
        
        carouselContainer.addEventListener('touchend', (e) => {
            touchEndX = e.changedTouches[0].screenX;
            if (touchStartX - touchEndX > 40) {
                nextSlide();
            } else if (touchEndX - touchStartX > 40) {
                prevSlide();
            }
            startTimer();
        }, { passive: true });
    }
    
    // Trigger initial scroll check for header
    if (window.scrollY > 50) {
        header.classList.add('scrolled');
    }
});
