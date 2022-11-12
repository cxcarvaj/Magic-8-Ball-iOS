//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Carlos Carvajal on 11/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImageView: UIImageView!

    @IBOutlet weak var rightHandImageView: UIImageView!
    @IBOutlet weak var leftHandImageView: UIImageView!
    //    In order to use the images of our assets in the Array we use: #imageLiteral()
    let arrayOfMagicBalls = [ #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball1")];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leftHandImageView.isHidden = true;
        rightHandImageView.isHidden = true;
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        magicBallImageView.image = arrayOfMagicBalls.randomElement();
        
        leftHandImageView.isHidden = false;
        rightHandImageView.isHidden = false;
    }
    
}

