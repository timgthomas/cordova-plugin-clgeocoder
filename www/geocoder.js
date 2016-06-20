var exec = require('cordova/exec');

exports.reverseGeocodeLocation = function(latitude, longitude, success, error) {
  exec(success, error, 'CLGeocoderPlugin', 'reverseGeocodeLocation', [ latitude, longitude ]);
};
