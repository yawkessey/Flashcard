//
//  ViewController.swift
//  Flashcard
//
//  Created by Yaw Kessey-Ankomah on 3/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomText: UILabel!
    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = true
    }

    
    
}

