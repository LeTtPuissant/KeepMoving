function ReverseGeocodeLatLng(latlng) {

    var geocoder = new google.maps.Geocoder();
    if (latlng !== undefined) {
        latlng = latlng.split(',');
        var LatLng = new google.maps.LatLng(latlng[0], latlng[1]);
        geocoder.geocode({ location: LatLng }, function (result, status) {
            if (status == 'success') {
                var locationString = "";
                $(result).each(function () {
                    var $result = this;
                    if ($result.types.inArray('locality') && $result.types.inArray('political')) {
                        locationString = $result.formatted_address;
                    }
                });
                return locationString;
            }
        });
    }
}