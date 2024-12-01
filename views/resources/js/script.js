// Toggle dropdown menu
function toggleDropdown() {
    var dropdown = document.getElementById("dropdown-content");
    dropdown.style.display = (dropdown.style.display === "block") ? "none" : "block";
}

// Close dropdown if clicked outside
document.addEventListener('click', function(event) {
    var dropdown = document.getElementById("dropdown-content");
    var isClickInside = event.target.closest('.category-wrapper');
    if (!isClickInside) {
        dropdown.style.display = "none";
    }
});
