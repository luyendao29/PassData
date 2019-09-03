//
//  SecondVC.swift
//  NSNotificationCenter-userInfo: [NSObject : AnyObject]
//
//  Created by Boss on 9/3/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit
extension Notification.Name {
    static var notification = Notification.Name("Key")
}

class SecondVC: UIViewController {

    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func passDataButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .notification, object: nil, userInfo: ["Key1": secondTextField.text])
        navigationController?.popViewController(animated: true)
    }

}
