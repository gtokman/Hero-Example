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
            // Hero ID for shared UIElement between source/destination
            detailImageView.heroID = image.id
        }
    }
    
    // MARK: - Actions
    
    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        // Get translation
        let translation = sender.translation(in: nil)
        let progress = translation.y / 2 / view.bounds.height
        switch sender.state {
        case .began:
            // Start the dismiss of View Controller on Pan
            hero_dismissViewController()
        case .changed:
            // Update pan progress
            Hero.shared.update(progress)
            
            // Add additional animations with modifiers
            let currentPos = CGPoint(x: translation.x + detailImageView.center.x, y: translation.y + detailImageView.center.y)
            Hero.shared.apply(modifiers: [.position(currentPos)], to: detailImageView)
        default:
            // Cancel or finish transition
            if progress + sender.velocity(in: nil).y / view.bounds.height > 0.2 {
                Hero.shared.finish()
            } else {
                Hero.shared.cancel()
            }
            
        }
    }
}
