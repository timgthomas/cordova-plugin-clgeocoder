@objc(CLGeocoderPlugin) class CLGeocoderPlugin : CDVPlugin {

  func reverseGeocodeLocation(command: CDVInvokedUrlCommand) {

    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    pluginResult = CDVPluginResult(
      status: CDVCommandStatus_OK,
      messageAsString: "This plugin works!"
    )

    self.commandDelegate!.sendPluginResult(
      pluginResult,
      callbackId: command.callbackId
    )

  }

}
