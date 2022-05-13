//
//  CollectionViewCell.swift
//  SampleScreenRecreation
//
//  Created by Sean Murphy on 5/12/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    static let identifier = "CollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: Model) {
        self.label.text = model.text
        self.imageView.image = UIImage(named: model.imageName)
        self.imageView.contentMode = .scaleAspectFill
    }

}
