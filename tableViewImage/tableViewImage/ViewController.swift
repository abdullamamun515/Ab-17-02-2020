//
//  ViewController.swift
//  tableViewImage
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var imageArray = ["b1","b2","b3","b4","b5","b6"]
    var NameArray = ["bargur1","bargur2","bargur3","bargur4","bargur5","bargur6"]
    var PriceArray = ["$5","$6","$3","$7","$4","$5"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.ImageCell.image = UIImage(named: imageArray[indexPath.row])
        cell.label1Cell.text = NameArray[indexPath.row]
        cell.label2Cell.text = PriceArray[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
}

