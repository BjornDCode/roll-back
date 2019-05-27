//
//  OnboardingPageViewController.swift
//  Roll Back
//
//  Created by Bjørn Lindholm on 27/05/2019.
//  Copyright © 2019 Bjørn Lindholm. All rights reserved.
//

import UIKit

class OnboardingPageViewController : UIPageViewController {
    
    
    override func viewDidLoad() {
        setViewControllers([getStepOne()], direction: .forward, animated: true, completion: nil)
    }
    
    func getStepOne() -> StepOneViewController {
        return storyboard?.instantiateViewController(withIdentifier: "StepOne") as! StepOneViewController
    }
    
}
