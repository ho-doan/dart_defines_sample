//
//  Env.swift
//  Runner
//
//  Created by Ho Doan on 8/26/24.
//

import Foundation

class Env {
    private var dartDefinesDictionary = [String:String]()
    
    func decodeDartDefines() {
        let dartDefinesString = Bundle.main.object(forInfoDictionaryKey: "DART_DEFINES") as! String
        for definedValue in dartDefinesString.components(separatedBy: ",") {
            let decoded = String(data: Data(base64Encoded: definedValue)!, encoding: .utf8)!
            let values = decoded.components(separatedBy: "=")
            dartDefinesDictionary[values[0]] = values[1]
        }
    }
    
    
    lazy var appName = dartDefinesDictionary["APP_NAME"] ?? "error env";
    lazy var appFlavor = dartDefinesDictionary["APP_FLAVOR"] ?? "error env";
    lazy var appWebLink = dartDefinesDictionary["APP_WEB_LINK"] ?? "error env";
    lazy var appSuffix = dartDefinesDictionary["APP_ID_SUFFIX"] ?? "error env";
}
