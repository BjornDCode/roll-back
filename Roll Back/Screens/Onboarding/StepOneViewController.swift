//
//  StepOneViewController.swift
//  Roll Back
//
//  Created by Bjørn Lindholm on 27/05/2019.
//  Copyright © 2019 Bjørn Lindholm. All rights reserved.
//

import UIKit

class StepOneViewController: UIViewController {
 
    let stackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        
        return stackView
    }()
    
    let screenTitle: RBTitle = {
        let screenTitle = RBTitle()
        
        screenTitle.setTitle(items: [
            TitleItem(index: 0, type: .regular, text: "What time are you "),
            TitleItem(index: 1, type: .bold, text: "currently"),
            TitleItem(index: 1, type: .regular, text: " waking up?")
        ])
        
        return screenTitle
    }()
    
    let nextButton: UIButton = {
        let nextButton = UIButton()
        
        nextButton.backgroundColor = Colors.blue900
        nextButton.setTitleColor(Colors.blue200, for: .normal)
        nextButton.setTitle("Continue", for: .normal)
        
        return nextButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.blue200
        
        setupStackView()
        
    }
    
    // MARK: - Setup
    
    func setupStackView() {
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        stackView.addArrangedSubview(screenTitle)
        stackView.addArrangedSubview(nextButton)
    }

    // MARK: - Navigation

}
