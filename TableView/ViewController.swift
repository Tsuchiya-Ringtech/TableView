//
//  ViewController.swift
//  TableView
//
//  Created by Kazunori Tsuchiya on 2023/06/09.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var fruits = ["りんご", "みかん", "ブドウ", "レモン", "スイカ", "メロン"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cells", for: indexPath)
                cell.textLabel!.text = fruits[indexPath.row]
                return cell
    }
}

