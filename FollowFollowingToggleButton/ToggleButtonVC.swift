//
//  ViewController.swift
//  FollowFollowingToggleButton
//
//  Created by Apple on 17/02/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class ToggleButtonVC: UIViewController {

    //Outlets:
    @IBOutlet weak var toggleFollowButton: UIButton!
    
    //Variables:
    var isButtonOn = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customiseUI()
    }

    func customiseUI() {
        toggleFollowButton.layer.borderWidth = 3.0
        toggleFollowButton.layer.borderColor = UIColor(red: 0/255, green: 166/255, blue: 221/255, alpha: 1.0).cgColor
        toggleFollowButton.layer.cornerRadius = 20.0
        toggleFollowButton.clipsToBounds = true
    }
    @IBAction func followActionPressed(_ sender: Any) {
        self.activateButton(bool: !isButtonOn)
    }
    
    
    func activateButton(bool: Bool) {
        
        isButtonOn = bool
        
        toggleFollowButton.backgroundColor = bool ? UIColor(red: 0/255, green: 166/255, blue: 221/255, alpha: 1.0) : .clear
        toggleFollowButton.setTitle(bool ? "Following" : "Follow", for: .normal)
        toggleFollowButton.setTitleColor(bool ? .white : UIColor(red: 0/255, green: 166/255, blue: 221/255, alpha: 1.0), for: .normal)
    }

}

