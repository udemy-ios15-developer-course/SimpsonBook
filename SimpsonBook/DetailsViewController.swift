//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Chris Hand on 8/16/22.
//

import UIKit

class DetailsViewController: UIViewController {

    var character: Character?
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var roleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        characterImage.image = UIImage(named: character!.image)
        navigationController?.title = character!.title
        roleLabel.text = character!.role
    }
}
