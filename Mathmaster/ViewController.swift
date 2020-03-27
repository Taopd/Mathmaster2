//
//  ViewController.swift
//  Mathmaster
//
//  Created by keval dattani on 24/03/20.
//  Copyright © 2020 keval dattani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLevel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if isKeyPresentInUserDefaults(key: "level") {
            let level = UserDefaults.standard.string(forKey: "level")
            self.lblLevel.text = "Difficulty : \(level!)"
        }else {
            self.lblLevel.text = "Difficulty : Easy"
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnStart(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TypeVC") as? TypeVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnLevel(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LevelVC") as? LevelVC
             self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnAbooutUs(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AboutVC") as? AboutVC
                    self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
}

