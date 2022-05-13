//
//  ViewController.swift
//  SampleScreenRecreation
//
//  Created by Sean Murphy on 5/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "1st", imageName: "Image-1"))
        models.append(Model(text: "2nd", imageName: "Image-2"))
        models.append(Model(text: "3rd", imageName: "Image-3"))
        models.append(Model(text: "4th", imageName: "Image-4"))
        models.append(Model(text: "5th", imageName: "Image-5"))
        models.append(Model(text: "6th", imageName: "Image-6"))
        models.append(Model(text: "7th", imageName: "Image-7"))
        models.append(Model(text: "8th", imageName: "Image-8"))
        models.append(Model(text: "9th", imageName: "Image-9"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }

}

struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

