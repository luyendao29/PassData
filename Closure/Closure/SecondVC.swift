//
//  SecondVC.swift
//  Closure
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var secondTextField: UITextField!
    
    var onCompletion: ((_ data: String) -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func passData(_ sender: Any) {
        onCompletion?(secondTextField.text!)
        dismiss(animated: true, completion: nil)
    }

}
