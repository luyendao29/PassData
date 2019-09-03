//
//  SecondVC.swift
//  NSNotification
//
//  Created by Boss on 9/3/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

extension Notification.Name{
    static let notifications = Notification.Name("key")
}

class SecondVC: UIViewController {

    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tabToNotifyBack(_ sender: UIButton) {
        let dataToSend = secondTextField.text
        NotificationCenter.default.post(name: .notifications, object: dataToSend)
        dismiss(animated: true, completion: nil)
    }

}
