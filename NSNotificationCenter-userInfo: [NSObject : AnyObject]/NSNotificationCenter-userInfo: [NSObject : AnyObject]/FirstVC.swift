//
//  ViewController.swift
//  NSNotificationCenter-userInfo: [NSObject : AnyObject]
//
//  Created by Boss on 9/3/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerButton(_ sender: UIButton) {
        NotificationCenter.default.addObserver(self, selector: #selector(receivedData(_:)), name: .notification , object: nil)
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVCID")
        navigationController?.pushViewController(secondVC!, animated: true)
    }
    
    @objc func receivedData(_ notification: NSNotification) {
        firstLabel.text = notification.userInfo!["Key1"] as? String 
    }
    
}

