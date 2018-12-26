//
//  ViewController.swift
//  Dicee
//
//  Created by Churong Zhang on 12/23/18.
//  Copyright © 2018 Churong Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
 
    var randomDiceIndex1: Int = 0
 /*   var randomDiceIndex2: Int = 0
    var randomDiceIndex3: Int = 0
    var randomDiceIndex4: Int = 0
    var randomDiceIndex5: Int = 0
    */
    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    @IBOutlet weak var diceView3: UIImageView!
    @IBOutlet weak var diceView4: UIImageView!
    @IBOutlet weak var diceView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func RollPress(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
   
//    @IBAction func rollSame(_ sender: UIButton) {
//        randomDiceIndex1 = Int.random(in: 0 ... 5)
//        diceView1.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceView2.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceView3.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceView4.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceView5.image = UIImage(named: diceArray[randomDiceIndex1])
//    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages(){
     /*
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        randomDiceIndex3 = Int.random(in: 0 ... 5)
        randomDiceIndex4 = Int.random(in: 0 ... 5)
        randomDiceIndex5 = Int.random(in: 0 ... 5)
        */
        diceView1.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
        diceView2.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
        diceView3.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
        diceView4.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
        diceView5.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
    }
    
}

