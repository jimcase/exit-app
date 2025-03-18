import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ExitAppPlugin)
public class ExitAppPlugin: CAPPlugin {
    private let implementation = ExitApp()

    @objc func exitApp(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            exit(0)
        }
        call.resolve()
    }
}
