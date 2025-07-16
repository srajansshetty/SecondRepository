
     // Tab switching
     function showTab(tabId) {
         document
           .querySelectorAll(".edu-tab-panel")
           .forEach((tab) => (tab.style.display = "none"));
         document
           .querySelectorAll(".edu-tab-button")
           .forEach((btn) => btn.classList.remove("active"));
         document.getElementById(tabId).style.display = "block";
         event.target.classList.add("active");
     }

document.addEventListener("DOMContentLoaded", function () {
    // Logo scroll functionality
    const container = document.getElementById("logoCarousel");
    let scrollInterval;

    window.startScroll = function (direction) {
        stopScroll();
        scrollInterval = setInterval(() => {
            container.scrollLeft += direction * 2;
            if (
              (direction < 0 && container.scrollLeft <= 0) ||
              (direction > 0 &&
                container.scrollLeft >=
                  container.scrollWidth - container.clientWidth)
            ) {
                stopScroll();
            }
        }, 20);
    };

    window.stopScroll = function () {
        clearInterval(scrollInterval);
    };

    // Auto-scroll for touch devices
    if ("ontouchstart" in window) {
        let autoScrollDirection = 1;
        setInterval(() => {
            if (
              container.scrollLeft >=
              container.scrollWidth - container.clientWidth
            ) {
                autoScrollDirection = -1;
            } else if (container.scrollLeft <= 0) {
                autoScrollDirection = 1;
            }
            container.scrollLeft += autoScrollDirection * 1;
        }, 30);
    }
});
