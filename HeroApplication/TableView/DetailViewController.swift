//
//  DetailViewController.swift
//  HeroApplication
//
//  Created by Gary Tokman on 10/31/17.
//  Copyright © 2017 Gary Tokman. All rights reserved.
//

import UIKit
import Hero

class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var detailImageView: UIImageView!
    
    var unsplashImage: Image?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let image = unsplashImage {
            detailImageView.image = UIImage(named: image.id) 
        }
    }
    
    // MARK: - Actions
    
    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
    }
}
