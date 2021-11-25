//
//  ViewController.swift
//  W4 D4 EX1 TABLE VIEW
//
//  Created by يعرُب on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var cities = ["الدمام", "مكة", "جدة", "الرياض"]

    @IBOutlet weak var citiesTablView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        citiesTablView.dataSource = self
    }


}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }
}

