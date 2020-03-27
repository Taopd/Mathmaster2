//
//  AboutVC.swift
//  Mathmaster
//
//  Created by keval dattani on 24/03/20.
//  Copyright © 2020 keval dattani. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBackClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
