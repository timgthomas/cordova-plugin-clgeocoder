# cordova-plugin-clgeocoder

This plugin adds a `geocoder` property to the `navigator` global. Call `reverseGeocodeLocation()` to transform a latitude and longitude into an address using Apple's [CoreLocation](https://developer.apple.com/library/ios/documentation/CoreLocation/Reference/CoreLocation_Framework/) service:

```js
navigator.geocoder.reverseGeocodeLocation(latitude, longitude, success, failure);
function success(result) {
  // ...
}
function failure() {
  // ...
}
```

## Installation

`cordova plugin add cordova-plugin-clgeocoder`
