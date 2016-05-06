window.onscroll = function() {
  var speed = 8.0;
  document.getElementById('banner').style.backgroundPosition = (-window.pageXOffset / speed) + "px " + ((-100 + window.pageYOffset) / speed) + "px";
}