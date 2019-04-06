//
//  ViewController.swift
//  dicee
//
//  Created by Aman singh on 24/03/19.
//  Copyright © 2019 Aman singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var array=["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1:Int=0
    var randomDiceIndex2:Int=0
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        update()
        // diceImageView1.image=UIImage(named:"dice\(randomDiceIndex1)")
       // diceImageView2.image=UIImage(named:"dice\(randomDiceIndex2)")
        

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update()
    }
    
    func update(){
        randomDiceIndex1=Int.random(in:0...5)
        randomDiceIndex2=Int.random(in:0...5)
        diceImageView1.image=UIImage(named:array[randomDiceIndex1])
        diceImageView2.image=UIImage(named:array[randomDiceIndex2])
    }
    
   
}

