//
//  ViewController.swift
//  finalView
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBarBtn: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    var myArray = ["hjdgw","hagdh","gsdgsh","hagshx","csag","fdwty","fdtfga"]
    var search = [String]()
    var searching = false
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarBtn.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
            return search.count
        }else{
            return myArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching {
            cell?.textLabel?.text = search[indexPath.row]
        }else{
            cell?.textLabel?.text = myArray[indexPath.row]
        }
        return cell!
    }
    
    
}
extension ViewController:UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        search = myArray.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        self.tableView.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }
}

