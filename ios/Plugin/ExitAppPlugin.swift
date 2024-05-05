import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ExitAppPlugin)
public class ExitAppPlugin: CAPPlugin {
    private let implementation = ExitApp()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func exitApp(_ call: CAPPluginCall) {
        call.resolve()
        exit(0)
    }
}
