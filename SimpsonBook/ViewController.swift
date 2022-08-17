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
        // FIXME: this is being deprecated. Learn how to do it the new way
        cell.textLabel!.text = characters![indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailsView", sender: characters![indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let details = segue.destination as! DetailsViewController
        let character = sender as! Character
        details.character = character
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

