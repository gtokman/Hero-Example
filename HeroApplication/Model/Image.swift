//
//  Image.swift
//  TestHero
//
//  Created by Gary Tokman on 10/31/17.
//  Copyright © 2017 Gary Tokman. All rights reserved.
//

import Foundation

struct Image {
    let id: String
    let description: String
}

final class ImageFactory {
    var images = [Image]()
  
    init() {
        loadImages()
    }
    
    var count: Int {
        return images.count
    }
    
    func loadImages() {
        for i in 1...6 {
            let image = Image(id: "Image-\(i)", description: "Image-\(i)")
            images.append(image)
        }
    }
    
    func image(at indexPath: IndexPath) -> Image {
        return images[indexPath.row]
    }
}
