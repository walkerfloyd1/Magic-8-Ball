//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Walker Floyd on 10/1/19.
//  Copyright © 2019 Walker Floyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int (arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

