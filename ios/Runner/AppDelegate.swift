import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    let env = Env()
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        
        env.decodeDartDefines()
        print("dart define \(env.appName)")
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
