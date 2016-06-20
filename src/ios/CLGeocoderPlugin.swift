import CoreLocation

@objc(CLGeocoderPlugin) class CLGeocoderPlugin : CDVPlugin {

  func reverseGeocodeLocation(command: CDVInvokedUrlCommand) {

    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    let latitude = command.arguments[0] as? Double ?? 0
    let longitude = command.arguments[1] as? Double ?? 0
    let location = CLLocation(latitude: latitude, longitude: longitude)

    CLGeocoder().reverseGeocodeLocation(location, completionHandler: {(placemarks, error) -> Void in

      if error == nil {
        let firstPlacemark = placemarks![0]
        pluginResult = CDVPluginResult(
          status: CDVCommandStatus_OK,
          messageAsDictionary: firstPlacemark.addressDictionary
        )
      } else {
        pluginResult = CDVPluginResult(
          status: CDVCommandStatus_ERROR,
          messageAsString: error?.localizedDescription
        )
      }

      self.commandDelegate!.sendPluginResult(
        pluginResult,
        callbackId: command.callbackId
      )

    })

  }

}
