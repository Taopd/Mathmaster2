//
//  LevelVC.swift
//  Mathmaster
//
//  Created by keval dattani on 24/03/20.
//  Copyright © 2020 keval dattani. All rights reserved.
//

import UIKit

class LevelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBackClicked(_ sender: Any) {
          self.navigationController?.popViewController(animated: true)
    }
    @IBAction func btnEasy(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
        UserDefaults.standard.set("Easy", forKey: "level")
    }
    @IBAction func btnMid(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        UserDefaults.standard.set("Mediume", forKey: "level")
    }
    @IBAction func btnHard(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        UserDefaults.standard.set("Hard", forKey: "level")
    }
    

}
