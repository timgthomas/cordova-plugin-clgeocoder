var exec = require('cordova/exec');

exports.reverseGeocodeLocation = function(arg0, success, error) {
  exec(success, error, 'CLGeocoderPlugin', 'reverseGeocodeLocation', [ arg0 ]);
};
