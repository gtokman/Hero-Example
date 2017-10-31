//
//  TableViewController.swift
//  HeroApplication
//
//  Created by Gary Tokman on 10/31/17.
//  Copyright © 2017 Gary Tokman. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private let imageFactory = ImageFactory()
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageFactory.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell

        // Configure the cell...
        let image = imageFactory.image(at: indexPath)
        cell.unsplashImage = image

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? ImageCell, let detailViewController = segue.destination as? DetailViewController {
            detailViewController.unsplashImage = cell.unsplashImage
        }
    }

}
