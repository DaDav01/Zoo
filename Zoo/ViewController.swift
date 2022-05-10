//
//  ViewController.swift
//  Zoo
//
//  Created by Davit Davtyan on 10.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var fishButton: UIButton!
    var dogsButton: UIButton!
    var stackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        initCreateStack()
        initFishButton()
        initDogsButton()
        currentHierarchy()
        activateConstraints1()
        
    }
    
    
}

extension ViewController {
    
    private func   initCreateStack() {
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initFishButton() {
        fishButton = UIButton(type: .system)
        fishButton.layer.cornerRadius = 12
        fishButton.backgroundColor = .red
        fishButton.setTitle("Fish", for: .normal)
        fishButton.setTitleColor(.white, for:.normal)
        fishButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initDogsButton() {
        dogsButton = UIButton(type: .system)
        dogsButton.layer.cornerRadius = 12
        dogsButton.backgroundColor = .black
        dogsButton.setTitle("Dogs", for: .normal)
        dogsButton.setTitleColor(.white, for: .normal)
        dogsButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func currentHierarchy() {
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(fishButton)
        stackView.addArrangedSubview(dogsButton)
        
    }
    
    private func  activateConstraints1() {
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalToConstant: 200),
            stackView.heightAnchor.constraint(equalToConstant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            
        ])
        
        
    }
    
}
