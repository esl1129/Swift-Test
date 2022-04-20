//
//  ViewController.swift
//  redirect_sample
//
//  Created by mcnc on 2022/04/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func gotoWIFI(_ sender: Any) {
        guard let wifiURL = URL(string: "App-Prefs:WIFI") else {
            return
        }
        
        if UIApplication.shared.canOpenURL(wifiURL) {
            UIApplication.shared.open(wifiURL, completionHandler: { (success) in
                print("Settings opened: \(success)") // Prints true
            })
        }
        
    }
    
    @IBAction func gotoBLE(_ sender: Any) {
        guard let bleURL = URL(string: "App-prefs:Bluetooth") else {
            return
        }
        if UIApplication.shared.canOpenURL(bleURL) {
            UIApplication.shared.open(bleURL, completionHandler: { (success) in
                print("Settings opened: \(success)") // Prints true
            })
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

