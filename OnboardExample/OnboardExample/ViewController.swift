//
//  ViewController.swift
//  OnboardExample
//
//  Created by ali gonay on 3.10.2023.
//

import UIKit
import onboarding

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("AAAAA")
        
        let nv = UINavigationController()
        DispatchQueue.main.async {
            self.present(nv, animated: true)
        }
        
//        let c = OnboardingTheme()
        let a =  Onboarding(vc: nv)
        a.start()
        
        
        
    }


}

