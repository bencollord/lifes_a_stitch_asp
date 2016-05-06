(function () {

  var elem = function (id) {
    return document.getElementById(id);
  }

  var totalDays = 3;
  // Convert days to milliseconds
  var time = totalDays * 24 * 60 * 60 * 1000;

  var getTimeOnClock = function (time) {
    var seconds = Math.floor((time / 1000) % 60);
    var minutes = Math.floor((time / 1000 / 60) % 60);
    var hours = Math.floor((time / (1000 * 60 * 60)) % 24);
    var days = Math.floor(time / (1000 * 60 * 60 * 24));

    return {
      'seconds': seconds,
      'minutes': minutes,
      'hours': hours,
      'days': days
    }
  }

  var runTimer = setInterval(function () {
    time -= 1000;
    timer = getTimeOnClock(time);
    elem('seconds').innerHTML = timer.seconds;
    elem('minutes').innerHTML = timer.minutes;
    elem('hours').innerHTML = timer.hours;
    elem('days').innerHTML = timer.days;

    if (time <= 0) {
      clearInterval(runTimer);
    }
  }, 1000);

  document.onload = runTimer;


})();