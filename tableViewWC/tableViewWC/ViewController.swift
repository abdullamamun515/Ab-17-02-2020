//
//  ViewController.swift
//  tableViewWC
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var imageArray = ["a","b","c"]
    @IBOutlet weak var tabilView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabilView.dataSource = self
        tabilView.delegate = self
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = imageArray[indexPath.row]
        return cell!
    }
    
    
}
