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
    
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var guessLetterButton: UIButton!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    var words = [["JAVA", "Programming Language"],
                 ["REVANTH", "Indian Idol Winner"],
                 ["CAR", "Four wheeler"],
                 ["IPHONE", "Apple device"],
                 ["PRABHAS", "Movie Actor"]]
    var totalWords = 5
    var wordsGuessed = 0
    var remainingWords = 5
    
    var maxNumOfWrongGuesses = 10
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessed)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(remainingWords)"
        totalWordsLabel.text = "Total number of words in game : \(totalWords)"
        guessLetterButton.isEnabled = false
        
    }

    


    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
    
}

