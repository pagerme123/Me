document.addEventListener("DOMContentLoaded", function() {
    if (window.location.pathname.endsWith(".html")) {
        var newPath = window.location.pathname.replace(".html", "");
        window.history.pushState({}, "", newPath);
    }
});