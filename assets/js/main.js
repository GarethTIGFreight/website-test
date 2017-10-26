/*
* Main JS
*
* Provides some functionality to help the TIG Freight website
*
* Author: Gareth Somers
* Date: October 2017
* Company: TIG Freight
*
*/

// Initiate AOS
AOS.init({
    offset: 250,
    duration: 800,
    easing: 'ease',
    delay: 0,
});

/**
 * Get Documents Scroll Top
 *
 * Gets the distance the documents scrolled from the top
 * 
 * @return Int Distance scrolled from the top
 */
function getDocumentsScrollTop () {
    var rect = document.body.getBoundingClientRect();
    return rect.top * -1;
}

/**
 * Add Class
 *
 * Adds a class to an element
 *
 * @param Object el The DOM element to add a class from
 * @param String class The class to add
 */
function addClass (el, className) {
    if (el.classList) {
        el.classList.add(className);
    } else {
        el.className += ' ' + className;
    }
}

/**
 * Remove Class
 *
 * Removes a class from an element
 *
 * @param Object el The DOM element to remove a class from
 * @param String class The class to remove
 */
function removeClass (el, className) {
    if (el.classList) {
    el.classList.remove(className);
    } else {
        el.className = el.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
    }
}

/**
 * Throttle
 *
 * Basic throttling helper function
 *
 * @param Function fn The function to run after x time
 * @param Int wait The time to wait
 *
 */
function throttle(fn, wait) {
    var time = Date.now();
    return function() {
        if ((time + wait - Date.now()) < 0) {
            fn();
            time = Date.now();
        }
    }
}


/**
 * Setup Burger Click Event
 *
 * This sets up the click event for the burger button
 */
function setupBurgerClickEvent () {
    // Get all "navbar-burger" elements
    var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

    // Check if there are any nav burgers
    if ($navbarBurgers.length > 0) {

        // Add a click event on each of them
        $navbarBurgers.forEach(function ($el) {
            $el.addEventListener('click', function () {

                // Get the target from the "data-target" attribute
                var target = $el.dataset.target;
                var $target = document.getElementById(target);

                // Toggle the class on both the "navbar-burger" and the "navbar-menu"
                $el.classList.toggle('is-active');
                $target.classList.toggle('is-active');
            });
        });
    }
}
document.addEventListener('DOMContentLoaded', setupBurgerClickEvent);


/**
 * Handle Scroll Event
 *
 * This will check whether we've "scrolled" the page
 *
 */
function handleAnimationFrame() {
    // If 
    if(getDocumentsScrollTop() > 50) {
        addClass(document.body, "is-scrolled");
        removeClass(document.body, "is-not-scrolled");
    } else {
        removeClass(document.body, "is-scrolled");
        addClass(document.body, "is-not-scrolled");
    }
    window.requestAnimationFrame(handleAnimationFrame);
}
handleAnimationFrame();

