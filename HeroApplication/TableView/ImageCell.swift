//
//  ImageCell.swift
//  HeroApplication
//
//  Created by Gary Tokman on 10/31/17.
//  Copyright © 2017 Gary Tokman. All rights reserved.
//

import UIKit
import Hero

class ImageCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var cellImageView: UIImageView!

    var unsplashImage: Image? {
        didSet {
            cellImageView.image = UIImage(named: unsplashImage!.id)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
