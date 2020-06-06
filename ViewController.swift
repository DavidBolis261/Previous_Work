//
//  ViewController.swift
//  ArabicTut
//
//  Created by David Bolis on 6/6/20.
//  Copyright © 2020 David Bolis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Choices = ["Rock", "Paper", "Scissor" ]
    var PlayerChoice = ""
    var PlayerScoreN = 0
    var ComputerScoreN = 0
    var GameTimerT = Timer()
    var GameTimerDisplayed = 10
    @IBOutlet weak var GameTimer: UILabel!
    @IBOutlet weak var PlayerImage: UIImageView!
    @IBOutlet weak var ComputerImage: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var ComputerScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PlayerImage.image = UIImage(named: "QuestionMark")
        ComputerImage.image = UIImage(named: "QuestionMark")
        TimerStart()
    }
    
    @IBAction func RockBtn(_ sender: Any) {
        PlayerChoice = "Rock"
        PlayerImage.image = UIImage(named: "Rock")
        CheckGame()
    }
    
    @IBAction func PaperBtn(_ sender: Any) {
        PlayerChoice = "Paper"
        PlayerImage.image = UIImage(named: "Paper")
        CheckGame()
    }
    
    @IBAction func ScissorBtn(_ sender: Any) {
        PlayerChoice = "Scissor"
        PlayerImage.image = UIImage(named: "Scissor")
        CheckGame()
    }
    
    func CheckGame(){
        let ComputerChoice = Choices.randomElement()
        ComputerImage.image = UIImage(named: "\(ComputerChoice!)")
        if PlayerChoice == ComputerChoice{
           
        }
        if PlayerChoice == "Rock" && ComputerChoice == "Scissor"{
            PlayerScoreN += 1
           
        }
        if PlayerChoice == "Rock" && ComputerChoice == "Paper"{
            ComputerScoreN += 1
           
        }
        if PlayerChoice == "Paper" && ComputerChoice == "Scissor"{
            ComputerScoreN += 1
            
        }
        if PlayerChoice == "Paper" && ComputerChoice == "Rock"{
             PlayerScoreN += 1
           
        }
        if PlayerChoice == "Scissor" && ComputerChoice == "Paper"{
             PlayerScoreN += 1
            
        }
        if PlayerChoice == "Scissor" && ComputerChoice == "Rock"{
             ComputerScoreN += 1
            
        }
        PlayerScore.text = "\(PlayerScoreN)"
        ComputerScore.text = "\(ComputerScoreN)"
    }
    
    func TimerStart(){
        GameTimerT = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    @objc
    func Action(){
        GameTimerDisplayed -= 1
        GameTimer.text = String(GameTimerDisplayed)
        GameController()
    }
    
    func GameController(){
        if GameTimerDisplayed == 0{
            GameTimerDisplayed = 10
            PlayerScoreN = 0
            ComputerScoreN = 0
            PlayerScore.text = "0"
            ComputerScore.text = "0"
        }
    }
    
}

