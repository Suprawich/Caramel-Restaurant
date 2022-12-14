const incrementCount = document.getElementById("increment-count");
const decrementCount = document.getElementById("decrement-count");

const totalCount = document.getElementById("total-count");

var count = 0;

totalCount.innerHTML = count;

const handleIncrement = () => {
    count++;
    totalCount.innerHTML = count;
  };
  
  // Function to decrement count
const handleDecrement = () => {
    if (count > 0) {
        count--;
    }
    totalCount.innerHTML = count;
};
  
  // Add click event to buttons
incrementCount.addEventListener("click", handleIncrement);
decrementCount.addEventListener("click", handleDecrement);

//Open Overlay
$ = function(id) {
    return document.getElementById(id);
}

var show = function(id) {
    $(id).style.display = 'block';
    overlay.style.display = 'block';
}
var hide = function(id) {
    $(id).style.display = 'none';
    overlay.style.display = 'none';
}

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
  
  // Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {
      var dropdowns = document.getElementsByClassName("dropdown-content");
      var i;
      for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
          openDropdown.classList.remove('show');
        }
      }
    }
}


id = function(url) {
  return 
}



n = function(name) {
  return document.getElementsByTagName(name);
}

function returnID() {
  
}