//
//  SrveButton.swift
//  Programmatic-UI
//
//  Created by MacBookPro on 01/03/1946 Saka.
//

import Foundation
import UIKit


class SrveButton: UIButton {
    
    //Init Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButtons()
    }
    
    //Function - That handel Button Config
    func setupButtons() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .blue
        layer.cornerRadius = 5
    }
}
