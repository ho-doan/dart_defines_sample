import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var dartDefinesDictionary = [String:String]()
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        
        decodeDartDefines()
        
        if let filename = dartDefinesDictionary["APP_NAME"] {
            print("dart define \(filename)")
        } else {
            print("dart define not found")
        }
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func decodeDartDefines() {
        let dartDefinesString = Bundle.main.object(forInfoDictionaryKey: "DART_DEFINES") as! String
        for definedValue in dartDefinesString.components(separatedBy: ",") {
            let decoded = String(data: Data(base64Encoded: definedValue)!, encoding: .utf8)!
            let values = decoded.components(separatedBy: "=")
            dartDefinesDictionary[values[0]] = values[1]
        }
    }
}
