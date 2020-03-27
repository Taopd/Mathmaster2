//
//  SuccessVC.swift
//  Mathmaster
//
//  Created by keval dattani on 24/03/20.
//  Copyright © 2020 keval dattani. All rights reserved.
//

import UIKit

class SuccessVC: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    
    var score = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.lblScore.text = "Score: \(score)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnShare(_ sender: Any) {
        let text = "Hey can you beat my score in Math Master, My score is : \(score)"

        // set up activity view controller
        let textToShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
    @IBAction func btnHome(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
