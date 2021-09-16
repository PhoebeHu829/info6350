//
//  ViewController.swift
//  RollingDice
//
//  Created by Phoebe Hu on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgDiceOne: UIImageView!
    
    @IBOutlet weak var imgDiceTwo: UIImageView!
    
    @IBOutlet weak var totalScore: UILabel!
    
    var score = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func below7Press(_ sender: Any) {
        let trialOne = Int.random(in: 1...6);
        let trialTwo = Int.random(in: 1...6);
        
        let pic1 = "Dice\(trialOne)";
        let pic2 = "Dice\(trialTwo)";
        
        imgDiceOne.image = UIImage(named: pic1);
        imgDiceTwo.image = UIImage(named: pic2);
        
        if(trialOne + trialTwo < 7) {
            score += 1;
        } else {
            score -= 1;
        }
        
        totalScore.text = "Your Total Score is \(score)";
    }
    
    @IBAction func lucky7Press(_ sender: Any) {
        let trialOne = Int.random(in: 1...6);
        let trialTwo = Int.random(in: 1...6);
        
        let pic1 = "Dice\(trialOne)";
        let pic2 = "Dice\(trialTwo)";
        
        imgDiceOne.image = UIImage(named: pic1);
        imgDiceTwo.image = UIImage(named: pic2);
        
        if(trialOne + trialTwo == 7) {
            score += 7;
        } else {
            score -= 1;
        }
        
        totalScore.text = "Your Total Score is \(score)"
    }
    
    @IBAction func Above7Press(_ sender: Any) {
        let trialOne = Int.random(in: 1...6);
        let trialTwo = Int.random(in: 1...6);
        
        let pic1 = "Dice\(trialOne)";
        let pic2 = "Dice\(trialTwo)";
        
        imgDiceOne.image = UIImage(named: pic1);
        imgDiceTwo.image = UIImage(named: pic2);
        
        if(trialOne + trialTwo > 7) {
            score += 1;
        } else {
            score -= 1;
        }
        
        totalScore.text = "Your Total Score is \(score)"
    }
    
}

