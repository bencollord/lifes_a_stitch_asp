$(function () {
  var geocoder = new google.maps.Geocoder();

  //get LatLng from geocoder
  geocoder.geocode({
    address: "3336 Atchison St Riverbank, CA 95367"
  }, function (results) {
    var latLng = results[0].geometry.location;

    var map = new google.maps.Map($("#map").get(0), {
      zoom: 16,
      center: latLng,
      MapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var marker = new google.maps.Marker({
      position: latLng,
      map: map,
    });

  });
});