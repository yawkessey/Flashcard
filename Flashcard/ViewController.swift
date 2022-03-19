//
//  ViewController.swift
//  Flashcard
//
//  Created by Yaw Kessey-Ankomah on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }
   
    func updateFlashcard(question: String, answer: String) {
        frontLabel.text = question
        backLabel.text = answer
        
    }
    
  
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if frontLabel.isHidden == true {
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }

    
    
}

