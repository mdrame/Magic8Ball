//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Mohammed Drame on 11/17/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    
    // Global Array
    let startUps = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let industryAnimals = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // button
        buttonPressed()

    }

    
    func buttonPressed() {
    
    let button = UIButton(type: .system)
        button.frame = CGRect(x: 120, y: 700, width: 200, height: 100)
        button.setTitle("SHAKE or PRESS ", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        view.addSubview(button)
    
    }
    
    @objc func buttonAction(sender: UIButton) {
        // test
//        print("Shake it like a polaroid picture!")
        
        // chossing a rand number b/w 0 and the length of the answer array
        displayAnswer()
//        answerLabel.text = "Button was tapped"
        
        
           }
    
    // avoiding Dry prenciple
    func displayAnswer() {
        let randomIndex = Int.random(in: 0..<startUps.count)
        answerLabel.text = startUps[randomIndex]
        animalLabel.text = industryAnimals[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
         displayAnswer()
        
    }
    



}


