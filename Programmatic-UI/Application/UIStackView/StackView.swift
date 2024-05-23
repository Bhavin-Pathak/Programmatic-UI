//
//  StackView.swift
//  Programmatic-UI
//
//  Created by MacBookPro on 01/03/1946 Saka.
//

import UIKit

class StackView: UIViewController {
    
    //MARK: Instance Variables
    var titelLabel = UILabel()
    var stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MARK: Function Call Here
        configLabelTitel()
        configStackView()
    }
    //Config-Main-Titel
    func configLabelTitel() {
        view.addSubview(titelLabel)
        titelLabel.text = "How Are You Bhavin?"
        titelLabel.font = UIFont.boldSystemFont(ofSize: 30)
        titelLabel.textAlignment = .center
        titelLabel.numberOfLines = 0
        titelLabel.adjustsFontSizeToFitWidth = true
        //Constraint Setting Function Call Here
        setConstraints()
    }
    
    // Constrait-Setting
    func setConstraints() {
        titelLabel.translatesAutoresizingMaskIntoConstraints = false
        titelLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        titelLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        titelLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
    }
    
    //MARK: Config StackView
    func configStackView() {
        view.addSubview(stackView)
        //Axis mean Horizental Or Vertical
        stackView.axis = .vertical
        //Distribution -  Containt Alignment
        stackView.distribution = .fillEqually
        //Spacing
        stackView.spacing = 10
        //Button
        setStackButtons()
        //Constraint-Setting
        setStackViewConstraints()
    }
    //MARK: StackView Constrait-Setting
    func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: titelLabel.bottomAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
    }
    //MARK: Setup StackView Button
    func setStackButtons() {
        let numberOfButtons = 10
        //Pin With For Loop
        for i in 1...numberOfButtons {
            let button = SrveButton()
            button.setTitle("\(i)", for: .normal)
            stackView.addArrangedSubview(button)
        }
    }
}
