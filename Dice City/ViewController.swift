//
//  ViewController.swift
//  Dice City
//
//  Created by Timur Mone on 6/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()
        // even shorter, delete Int.random and replace by randomElement()
        
        diceImageView2.image = diceArray.randomElement()
        
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
                
        // print(Int.random(in: 1...10)) // to show the randomizing with range.
        // 3 dots specify range from 1, including 10
     
    }
    
}

// refactor - take our code and make it simpler,
// Same array is used in both places, why not create a reference,
// give it a name instead of using an array. Even though xcode shows
// us nicely, but as soon as you comment it out, it's quite complex.
// There is an image literal is from source, what if we can create a variable,
// which then will refer to that array.
