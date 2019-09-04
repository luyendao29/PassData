//
//  ViewController.swift
//  Closure
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondVC
        secondVC?.onCompletion = { [weak self] data in
            self!.firstLabel.text = data
        }
    }


}

