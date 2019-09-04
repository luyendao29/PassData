//
//  SecondVC.swift
//  Delegate
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func sentoFirstVc(data: String?)
}

class SecondVC: UIViewController {
    @IBOutlet weak var textFileddata: UITextField!
    
    weak var delegate: SecondViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func PassData(_ sender: Any) {
        if textFileddata != nil {
            delegate?.sentoFirstVc(data: textFileddata.text)
            dismiss(animated: true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
