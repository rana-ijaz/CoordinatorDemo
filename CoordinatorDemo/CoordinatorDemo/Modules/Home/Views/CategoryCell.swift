//
//  CategoryCell.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.layer.cornerRadius = 6.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func setValues(category: Category){
        
        categoryLbl.text = category.name
        categoryImage.image = UIImage(named: category.imageURL ?? "") //categoryImage.loadImage(urlString: category.imageURL ?? "")
        
    }

}
