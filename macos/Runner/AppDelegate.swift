import Cocoa
import FlutterMacOS
import GoogleMaps // Add this line!
import Firebase

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    FirebaseApp.configure()
    GMSServices.provideAPIKey("AIzaSyAQHRfP5PChm2s30kmxD1LJf42KcUZ372Y")
    return true
  }
}
