//
//  FirstVC.swift
//  Delegate
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, SecondViewControllerDelegate {
    
    
    @IBOutlet weak var lableData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func sentoFirstVc(data: String?) {
        lableData.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? SecondVC
        vc?.delegate = self
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
