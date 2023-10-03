//
//  ViewController.swift
//  OnboardExample
//
//

import UIKit
import onboarding

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }

    func openOnboarding(pId:String){
        
        Onboarding.delegate = self
        
        if(pId.count > 0){
            Onboarding(vc: self.navigationController)
                .setTheme(theme: OnboardingTheme(
                    titleColor: UIColor(hex:"#6D6E71"), borderColor: UIColor(hex:"#cfd8e8"), boxEmptyColor: UIColor(hex:"#eff2f7"), boxFillColor: UIColor(hex:"#1EB4E1"), mainTextColor: UIColor(hex:"#ffffff"), revertTextColor: UIColor(hex:"#0069AA"), warningTextColor: UIColor(hex:"#fc521f"), backgroundColor: UIColor(hex:"#0069AA"), dialogBackgroundColor: UIColor(hex:"#96C0E6"), buttonColor: UIColor(hex:"#eff2f7"), buttonTextColor: UIColor(hex:"#0069AA"), loadingBackgroundColor: UIColor(hex:"#1f273366"), dialogButtonColor: UIColor(hex:"#0069AA"), dialogButtonTextColor: UIColor(hex:"#eff2f7"), boxHintFillColor: UIColor(hex:"#0000007F")
                ))
                .setProcess(process: pId)
                .start()
            AppDelegate.processId = nil
        }
    }
}

