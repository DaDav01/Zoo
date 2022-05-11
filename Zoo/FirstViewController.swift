//
//  FirstViewController.swift
//  Zoo
//
//  Created by Davit Davtyan on 10.05.22.
//
import UIKit

class FirstViewController: UIViewController {
    
    var welcomeLabel: UILabel!
    var startedButton: UIButton!
    var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        initWelcomeLabel()
        initPickerView()
        initStartedButton()
        currentHierarchy()
        activateConstraints()
        
    }
    
    
    @objc func buttonPressed(){
        self.navigationController?.pushViewController(ViewController(), animated: true)
        
    }
    
}

let language = ["Armenia", "English", "Russia"]

extension FirstViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in picker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return language[row]
    }
}
extension FirstViewController {
    
    private func initWelcomeLabel() {
        
        welcomeLabel = UILabel()
        welcomeLabel.text = " Welcome Zoo"
        welcomeLabel.textAlignment = .center
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    private func initPickerView() {
        picker = UIPickerView()
        picker.delegate = self
        picker.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initStartedButton() {
        startedButton = UIButton(type: .system)
        startedButton.setTitle("Get Started", for: .normal)
        startedButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        startedButton.layer.cornerRadius = 12
        startedButton.backgroundColor = .red
        startedButton.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func currentHierarchy() {
        view.addSubview(welcomeLabel)
        view.addSubview(startedButton)
        view.addSubview(picker)
    }
    
    private func   activateConstraints() {
        
        NSLayoutConstraint.activate([
            
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 25),
            
            startedButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 700),
            startedButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            startedButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            
            picker.topAnchor.constraint(equalTo: welcomeLabel.topAnchor, constant: 100),
            picker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            picker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25)
            
            
            
            
        ])
        
    }
    
}



