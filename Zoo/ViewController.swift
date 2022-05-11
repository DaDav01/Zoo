//
//  ViewController.swift
//  Zoo
//
//  Created by Davit Davtyan on 10.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var mammalButton: UIButton!
    var fishButton: UIButton!
    var birdsButton: UIButton!
    var stackView: UIStackView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        initCreateStack()
        initMammalButton()
        initFishButton()
        initBirdsButton()
        currentHierarchy()
        activateConstraints1()
        
    }
    
    
    let mammalsImage = UIImage(named: "Gar")
    let birdsImage = UIImage(named: "birds")
    let fishImage = UIImage(named: "fish1")
    
    
    
    @objc func mammalsButton(sender: UIButton) {
        let mammal = TableView()
        navigationController?.pushViewController(mammal, animated: true)
     
        
    }
    
    @objc func fisherButton(sender: UIButton) {
        let fish = TableView()
        fish.animalKinds = ["Bullhead", "Pike", "Carp"]
        navigationController?.pushViewController(fish, animated: true)
    }
    
    @objc func birdButton(sender: UIButton) {
        let bird = TableView()
        bird.animalKinds = ["Barn Owl", "Wood Duck", "Rooster"]
        navigationController?.pushViewController(bird, animated: true)
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
    
    private func initMammalButton() {
        mammalButton = UIButton(type: .system)
        mammalButton.setImage(mammalsImage?.withRenderingMode(.alwaysOriginal), for: .normal)
        mammalButton.layer.cornerRadius = 12
        mammalButton.addTarget(self, action: #selector(mammalsButton), for: .touchUpInside)
        mammalButton.setTitle("Mammals", for: .normal)
        mammalButton.setTitleColor(.red, for:.normal)
        mammalButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initFishButton() {
        fishButton = UIButton(type: .system)
        fishButton.layer.cornerRadius = 12
        fishButton.setImage(fishImage?.withRenderingMode(.alwaysOriginal), for: .normal)
        fishButton.addTarget(self, action: #selector(fisherButton), for: .touchUpInside)
        fishButton.setTitle("Fish", for: .normal)
        fishButton.setTitleColor(.red, for: .normal)
        fishButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func initBirdsButton() {
        birdsButton = UIButton(type: .system)
        birdsButton.layer.cornerRadius = 12
        birdsButton.setImage(birdsImage?.withRenderingMode(.alwaysOriginal), for: .normal)
        birdsButton.addTarget(self, action: #selector(birdButton), for: .touchUpInside)
        birdsButton.setTitle("Birds", for: .normal)
        birdsButton.setTitleColor(.red, for: .normal)
        birdsButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private func currentHierarchy() {
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(mammalButton)
        stackView.addArrangedSubview(fishButton)
        stackView.addArrangedSubview(birdsButton)
        
        }
    
    private func  activateConstraints1() {
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalToConstant: 200),
            stackView.heightAnchor.constraint(equalToConstant: 300),
            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            
        ])
        
        
    }
    
}
