//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Chris Hand on 8/16/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var characterList: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = "foo"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterList.dataSource = self
        characterList.delegate = self
    }
}

