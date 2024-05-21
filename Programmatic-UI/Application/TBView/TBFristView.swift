//
//  TBFristView.swift
//  Programmatic-UI
//
//  Created by MacBookPro on 31/02/1946 Saka.
//

import UIKit

class TBFristView: UIViewController {
  
    //MARK: TableView Instance
    let tbview = UITableView()
    //MARK: Modelclass instance
    var images: [ImagesModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Programmatic TBView"
        images = fetchData()
        configTableView()
    }
    
    func configTableView() {
        //MARK: Configure Table View
        view.addSubview(tbview)
        //Set Delegate
        setTableViewDelegate()
        //Set Rows Height
        tbview.rowHeight = 120
        //Register Cell
        tbview.register(ImageViewCell.self, forCellReuseIdentifier: "ImageViewCell")
        //Constrients
        tbview.pin(to: view)
    }
    
    //MARK: Delegate Setting
    func setTableViewDelegate() {
        tbview.delegate = self
        tbview.dataSource = self
    }
    
}

extension TBFristView: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Numbers of rows Register
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    //MARK: Table View Configure
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = tbview.dequeueReusableCell(withIdentifier: "ImageViewCell") as! ImageViewCell
        let imge = images[indexPath.row]
        cells.set(image: imge)
        return cells
    }
    
    
}

extension TBFristView {
    
    func fetchData() -> [ImagesModel] {
        let img1 = ImagesModel(images: Images.babygold!, titel: "Baby Gold")
        let img2 = ImagesModel(images: Images.dogesh!, titel: "Dogesh")
        let img3 = ImagesModel(images: Images.white!, titel: "White")
        let img4 = ImagesModel(images: Images.goldii!, titel: "Goldii")
        let img5 = ImagesModel(images: Images.husky!, titel: "Husky")
        let img6 = ImagesModel(images: Images.pinki!, titel: "Pinki")
        let img7 = ImagesModel(images: Images.pumpy!, titel: "Pumpy")
        let img8 = ImagesModel(images: Images.rosedog!, titel: "RoseDog")
        
        return [img1, img2, img3, img4, img5, img6, img7, img8]
    }
}
