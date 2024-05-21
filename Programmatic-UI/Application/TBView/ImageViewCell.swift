//
//  ImageViewCell.swift
//  Programmatic-UI
//
//  Created by MacBookPro on 31/02/1946 Saka.
//

import UIKit

class ImageViewCell: UITableViewCell {
    
    //MARK: Instace Variables
    
    var imageview = UIImageView()
    var titellable = UILabel()

    //MARK: Methods for ui config.....
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(imageview)
        addSubview(titellable)
        configImages()
        configTextLable()
        setImageConstraint()
        setTextLabelConstraint()
    }
    //MARK: Incase of anyerror shows this method
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: ImagesModels - Function Set
    func set(image: ImagesModel) {
        imageview.image = image.images
        titellable.text = titellable.text
    }
    
    //MARK: Config Imagee VIew
    func configImages() {
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
    }
    //MARK: Config Lable
    func configTextLable() {
        titellable.numberOfLines = 0
        titellable.adjustsFontSizeToFitWidth = true
    }
    
    //MARK: Set Constraints to Imageview
    func setImageConstraint() {
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imageview.widthAnchor.constraint(equalTo: imageview.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    //MARK: Set Constraints to Lableview
    func setTextLabelConstraint() {
        titellable.translatesAutoresizingMaskIntoConstraints = false
        titellable.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titellable.leadingAnchor.constraint(equalTo: titellable.trailingAnchor, constant: 20).isActive = true
        titellable.heightAnchor.constraint(equalToConstant: 80).isActive = true
        titellable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
