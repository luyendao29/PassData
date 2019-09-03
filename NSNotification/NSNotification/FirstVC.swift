//
//  ViewController.swift
//  NSNotification
//
//  Created by Boss on 9/3/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var firstVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func afterNotifited(notification: NSNotification) {
        firstVCLabel.text = (notification.object as! String)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("key"), object: nil)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        NotificationCenter.default.addObserver(self, selector: #selector(afterNotifited(notification:)), name: .notifications, object: nil)
    }

}

