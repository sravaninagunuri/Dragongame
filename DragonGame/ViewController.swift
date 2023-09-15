//
//  ViewController.swift
//  DragonGame
//
//  Created by Sravani Nagunuri on 9/15/23.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var player2Img: UIImageView!
    @IBOutlet weak var player1Img: UIImageView!
    @IBOutlet weak var prepareBattleLbl: UILabel!
    
    var model: Data!
    var player1Images: [String]!
    var player2Images: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = Data()
        player1Images = model.getPlayer1Images()
        player2Images = model.getPlayer2Images()
    }

    @IBAction func restartBtnTapped(_ sender: Any) {
        
        // reset all
        
        prepareBattleLbl.text = "Prepare for the battle!"
        player1Img.image = UIImage(systemName: "globe") // UIImage(named:"")
        player2Img.image = UIImage(systemName: "globe") // UIImage(named:"")
    }
    @IBAction func flightBtnTapped(_ sender: Any) {
        player1Img.image = UIImage(named: player1Images.randomElement() ?? "globe")
        player2Img.image = UIImage(named: player2Images.randomElement() ?? "globe")
        
        // strong weak ....
        // number of points
        model.savePlayerResults(result: "player 1 is won 2 -3")
        
        UserDefaults.setValue("player 1 is won 2 -3", forKey: "result")
        
        UserDefaults.setValue("points", forKey: "player1")
        
        prepareBattleLbl.text = "\(String(describing: player1Images.randomElement()))Player 1 is won"

        
    }
    
}

