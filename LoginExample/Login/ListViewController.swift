//
//  ListViewController.swift
//  Login
//
//  Created by Field Employee on 10/17/21.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    var myInfo = ["Mohammed", "Ali", "Abbas", "Regents Blvd", "Union City", "California"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myInfo[indexPath.row]
        return cell
    }
    
}
