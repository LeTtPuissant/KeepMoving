function initMap(location) {

            navigator.geolocation.getCurrentPosition(function (pos) {
                var LatLong = pos.coords.latitude + "," + pos.coords.longitude;
                console.log(LatLong);

                map = new google.maps.Map(document.getElementById('map'), {

                    zoom: 15,
                    enableHighAccuracy: true,
                    center: { lat: Number(pos.coords.latitude), lng: Number(pos.coords.longitude) },
                    mapTypeControl: false,
                    disableDefaultUI: true,

                });

                // Place Marker on initial position
                var markerPos = new google.maps.Marker({
                    position: {
                        lat: Number(pos.coords.latitude),
                        lng: Number(pos.coords.longitude)
                    },
                    map: map,
                    title: 'Click pour zoomer'
                });


                // SetPosition Marker
                navigator.geolocation.watchPosition(function (pos) {
                    markerPos.setPosition({ lat: Number(pos.coords.latitude), lng: Number(pos.coords.longitude) });
                });

            });

           // console.log(ReverseGeocodeLatLng(LatLong));

        }