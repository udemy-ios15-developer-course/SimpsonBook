//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Chris Hand on 8/16/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var characters : [Character]?
    @IBOutlet weak var characterList: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = characters![indexPath.row].title
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterList.dataSource = self
        characterList.delegate = self
        let modelData = ModelData()
        modelData.loadCharacters()
        characters = modelData.characters
    }
}

