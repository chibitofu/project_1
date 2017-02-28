//
//  ViewController.swift
//  Project1
//
//  Created by Erin Moon on 2/26/17.
//  Copyright © 2017 Erin Moon. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    //Array to hold pictures to show in table.
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        
        //Holds the path to all the resources loaded by the app.
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        //Iterates through all the resources and filters out the ones that start with nssl.
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
    
    //Creates a number of rows equal to the count of items in the pictures array.
    override func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    //Assigns a picture file to each row.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

