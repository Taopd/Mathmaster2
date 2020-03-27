//
//  TypeVC.swift
//  Mathmaster
//
//  Created by keval dattani on 24/03/20.
//  Copyright © 2020 keval dattani. All rights reserved.
//

import UIKit

class TypeVC: UIViewController {

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
    @IBAction func btnback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnAddClicked(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "firstVC") as? firstVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnSub(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
               self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnMal(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC
                     self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnDiv(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "FourthVC") as? FourthVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnMode(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "FifthVC") as? FifthVC
             self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
    
}
