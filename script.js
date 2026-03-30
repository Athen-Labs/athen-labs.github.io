// Script for header visibility and simple, reliable scrolling
document.addEventListener('DOMContentLoaded', function() {
    const header = document.querySelector('header');
    const heroSection = document.querySelector('#home');
    let heroHeight;
    const headerHeight = 70; // Approximate header height in pixels
    const navLinks = document.querySelectorAll('header nav a');
    const sections = document.querySelectorAll('section');

    // Calculate hero section height after images are loaded
    window.addEventListener('load', function() {
        heroHeight = heroSection.offsetHeight;
        updateHeaderVisibility();
        // Initial highlight of active section
        highlightActiveSection();
    });

    // Update hero height on window resize
    window.addEventListener('resize', function() {
        heroHeight = heroSection.offsetHeight;
        updateHeaderVisibility();
    });
    
    function updateHeaderVisibility() {
        // Get current scroll position
        const scrollPosition = window.scrollY;

        // Keep header visible in these cases:
        // 1. When scrolled past the hero section
        // 2. When navigating to a section using links (handled in scrollToSection)
        // 3. When viewing the first few sections after the hero
        
        // We want to always show the header when we're past the hero section
        if (scrollPosition > heroHeight - 50) {
            header.classList.add('visible');
        } else {
            // Only hide the header when we're truly at the top of the page
            // Don't dismiss it when browsing other sections
            if (scrollPosition < 50) {
                header.classList.remove('visible');
            }
        }
    }

    // Show/hide header based on scroll position
    window.addEventListener('scroll', function() {
        updateHeaderVisibility();
    });
    
    // Extremely simple scroll function with exact positioning
    function scrollToSection(sectionId) {
        const section = document.querySelector(sectionId);
        if (!section) return;
        
        // Make header visible
        header.classList.add('visible');
        
        // Get section position relative to the document
        // This gives us the absolute position from the top of the document
        const sectionTop = section.getBoundingClientRect().top + window.pageYOffset;
        
        // Offset by header height plus small negative value to remove any gap
        const exactPosition = sectionTop - headerHeight - 10;
        
        // Scroll to exact position
        window.scrollTo({
            top: exactPosition,
            behavior: 'smooth'
        });
    }
    
    // Function to highlight the active section in the navigation
    function highlightActiveSection() {
        // Get current scroll position
        const scrollPosition = window.scrollY + headerHeight + 50; // Add some offset
        
        // Find which section is currently in view
        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            const sectionHeight = section.offsetHeight;
            const sectionId = section.getAttribute('id');
            
            if (sectionId && scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
                // First remove active class from all links
                navLinks.forEach(link => link.classList.remove('active'));
                
                // Add active class to the corresponding nav link
                const activeLink = document.querySelector(`header nav a[href="#${sectionId}"]`);
                if (activeLink) {
                    activeLink.classList.add('active');
                }
            }
        });
    }
    
    // Add scroll event listener to update the active section
    window.addEventListener('scroll', highlightActiveSection);
    
    // Simple click handler for all anchor links
    document.querySelectorAll('a[href^="#"]').forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            // Update active class immediately when clicked
            navLinks.forEach(l => l.classList.remove('active'));
            this.classList.add('active');
            
            // Short delay to ensure header visibility is updated first
            setTimeout(() => {
                scrollToSection(targetId);
            }, 100);
        });
    });
});
