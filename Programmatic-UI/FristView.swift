//
//  ViewController.swift
//  Programmatic-UI
//
//  Created by MacBookPro on 31/02/1946 Saka.
//

import UIKit

class FristView: UIViewController {
    //MARK: Make UIButton Instance
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Frist Screen" // That Shows in Appbar Center Titel
        navigationController?.navigationBar.prefersLargeTitles = true
        //MARK: After View Apear Then Function Called Apear New Elements On View
        setupButton()
    }
    
    
    
    //MARK: Function For Make Button On Screen View
    func setupButton() {
        //MARK: Make Button To Add In SubView Mean Add Button On Screen
        view.addSubview(button)
        //MARK: Make Button Style
        button.configuration = .filled() //Filed Button
        button.configuration?.baseBackgroundColor = .blue //Blue Colour
        button.configuration?.title = "Next Screen" //Button Titel
        //MARK: Thats For AutoLayout
        button.translatesAutoresizingMaskIntoConstraints = false
        //MARK: Thats Contains Array Of Constraint Layout
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor), // That Used For CenterXAnchore Mean Screen Center
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor), // That Used For CenterYAnchore Mean Screen Center
            button.widthAnchor.constraint(equalToConstant: 200), // Button Weidth
            button.heightAnchor.constraint(equalToConstant: 50), //Butto Height
        ])
        //MARK: Button Target Mean When User Tap on Button Then Navgation Function Call And Navigate To Next Screen
        button.addTarget(self, action: #selector(navigateToSecondScreen), for: .touchUpInside)
    }
    //MARK: Function For Selector To Navigate Next Screen
    @objc func navigateToSecondScreen(){
        let navigate = SecondView()
        navigate.title = "Second Screen"
        navigate.view.backgroundColor = .white
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
}

