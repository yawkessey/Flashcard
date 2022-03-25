//
//  CreationViewController.swift
//  Flashcard
//
//  Created by Yaw Kessey-Ankomah on 3/19/22.
//

import UIKit

class CreationViewController: UIViewController {
    var flashcardsController: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
        
    }
    
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss (animated: true)
    }
    var isExisting = false;
    var initialQuestion: String?
    var initialAnswer: String?
    
  
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        
        let answerText = answerTextField.text
        
        var isExisting = false
        if initialQuestion != nil {
            isExisting = true
        }
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, isExisting: isExisting)
        
        dismiss (animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
