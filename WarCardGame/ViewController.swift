//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jelal on 2020-08-20.
//  Copyright © 2020 Jelal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Left: UIImageView!
    
    @IBOutlet weak var Right: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var rigthScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }

    
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)

        
        Left.image = UIImage(named: "card\(leftNumber)")
        Right.image = UIImage(named: "card\(rightNumber)")
        if leftNumber > rightNumber {
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
            
        }
        
        else if leftNumber < rightNumber {
            rightScore += 1
            rigthScoreLabel.text = String(rightScore)
            
            
        }
        
        else{
            
        }
    }
    
    

}

