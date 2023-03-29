//
//  ViewController.swift
//  Kattamuri_WordGuess
//
//  Created by Kattamuri,Vyshnavi on 3/28/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    
    @IBOutlet weak var totalWordsLabel: UIStackView!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
    
}

