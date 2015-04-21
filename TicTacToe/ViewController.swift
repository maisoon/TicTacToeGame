//
//  ViewController.swift
//  TicTacToe
//
//  Created by maisoon al quran on 4/17/15.
//  Copyright (c) 2015 maisoon al quran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let xImage = UIImage(named: "tic-tac-toe-X.png") as UIImage!
    let oImage = UIImage(named: "tic-tac-toe-O.png") as UIImage!
    let whiteImage = UIImage(named: "empty.png") as UIImage!
    let leftPointer = UIImage(named: "leftPointer.jpeg") as UIImage!
    let rightPointer = UIImage(named: "rightPointer.jpg") as UIImage!
    
    //let nilImage = UIImage(CGImage: nil)!
    
    var turn = true
    
    var firstPlayerScore:Int = 0
    var secondPlayerScore:Int = 0
    
    
    var firstIsFull = false
    var secondIsFull = false
    var thirdIsFull = false
    var fourthIsFull = false
    var fifthIsFull = false
    var sixthIsFull = false
    var seventhIsFull = false
    var eighthIsFull = false
    var ninthIsFull = false
    
    var firstValue:Int = 0
    var secondValue:Int = 0
    var thirdValue:Int = 0
    var fourthValue:Int = 0
    var fifthValue:Int = 0
    var sixthValue:Int = 0
    var seventhValue:Int = 0
    var eighthValue:Int = 0
    var ninthValue:Int = 0
    
    @IBOutlet weak var firstSquareOutlet: UIButton!
    
    @IBOutlet weak var secondSquareOutlet: UIButton!
    
    @IBOutlet weak var thirdSquareOutlet: UIButton!
    
    @IBOutlet weak var fourthSquareOutlet: UIButton!
    
    @IBOutlet weak var fifthSquareOutlet: UIButton!
    
    @IBOutlet weak var sixthSquareOutlet: UIButton!
    
    @IBOutlet weak var seventhSquareOutlet: UIButton!
    
    @IBOutlet weak var eigthSquareOutlet: UIButton!
    
    @IBOutlet weak var ninthSquareOutlet: UIButton!
    
    @IBOutlet weak var resetButtonOutlet: UIButton!
    
    @IBOutlet weak var firstPlayerImage: UIImageView!
    
    @IBOutlet weak var secondPlayerImage: UIImageView!
    
    @IBOutlet weak var firstPlayerScoreLabel: UILabel!
    
    @IBOutlet weak var secondPlayerScoreLabel: UILabel!
    
    @IBOutlet weak var rightPointerImage: UIImageView!
    
    @IBOutlet weak var leftPointerImage: UIImageView!
    
    @IBOutlet weak var youWonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resetingTiles()
        firstPlayerImage.image = UIImage(named: "tic-tac-toe-X.png")
        
        secondPlayerImage.image = UIImage(named: "tic-tac-toe-O.png")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changePointer()
    {
        if (turn == true)
        {
            rightPointerImage.hidden = false
            leftPointerImage.hidden = true
        }
        else
        {
            leftPointerImage.hidden = false
            rightPointerImage.hidden = true
        }
    
    }
    
    
    func resetingTiles()
    {
        firstIsFull = false
        secondIsFull = false
        thirdIsFull = false
        fourthIsFull = false
        fifthIsFull = false
        sixthIsFull = false
        seventhIsFull = false
        eighthIsFull = false
        ninthIsFull = false
        
        firstValue = 0
        secondValue = 0
        thirdValue = 0
        fourthValue = 0
        fifthValue = 0
        sixthValue = 0
        seventhValue = 0
        eighthValue = 0
        ninthValue = 0
        
    
        
        
    }
    
    func stopGame()
    {
        firstIsFull = true
        secondIsFull = true
        thirdIsFull = true
        fourthIsFull = true
        fifthIsFull = true
        sixthIsFull = true
        seventhIsFull = true
        eighthIsFull = true
        ninthIsFull = true
        
        firstPlayerScoreLabel.text = String(firstPlayerScore)
        secondPlayerScoreLabel.text = String(secondPlayerScore)
    
    //resetingTiles(); resetingTiles will reverse the upper functionality
        //it caused a logical error!
    }
    
    
    func calculateWinner()
    {
        
        var someoneWon = 0
    //first row all X
        if (firstValue == 1 && secondValue == 1 && thirdValue == 1)
        {
        firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
            
            
            //here we will update the label of the first player on the screen
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = true
            someoneWon = 1
           
            youWonLabel.text = "X Won"
            
          
        }
        
    //first row all O
        if (firstValue == 2 && secondValue == 2 && thirdValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
            
            
            
            //here we will update the label of the second player on the screen
            
            
            //stop the game
            stopGame()
            //change the turn to the component
            turn = false
            someoneWon = 1
             youWonLabel.text = "O Won"
            
        }
    //second row all X
        if (fourthValue == 1 && fifthValue == 1 && sixthValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
          
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            youWonLabel.text = "X Won"

            
        }
        //second row all 0
        if (fourthValue == 2 && fifthValue == 2 && sixthValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
          
            
            //here we will update the label of the first player on the screen
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
        }
        
        //third row all X
        if (seventhValue == 1 && eighthValue == 1 && ninthValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"

            
        }
        //third row all O
        if (seventhValue == 2 && eighthValue == 2 && ninthValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
         
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
        }
        
        //first column all X
        if (firstValue == 1 && fourthValue == 1 && seventhValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
          
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"

            
        }

        //first column all O
        if (firstValue == 2 && fourthValue == 2 && seventhValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
        }
        
        //second column all X
        if (secondValue == 1 && fifthValue == 1 && eighthValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
          
            
            youWonLabel.text = "X Won"

            
        }
        //second column all O
        if (secondValue == 2 && fifthValue == 2 && eighthValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
          youWonLabel.text = "O Won"
            
        }
    //third column all X
        if (thirdValue == 1 && sixthValue == 1 && ninthValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
         
            
            youWonLabel.text = "X Won"

        }
        //third column all O
        if (thirdValue == 2 && sixthValue == 2 && ninthValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
        }

        //backward slash all X
        if (firstValue == 1 && fifthValue == 1 && ninthValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
        
            
            youWonLabel.text = "X Won"

        }
        //backward slash all O
        if (firstValue == 2 && fifthValue == 2 && ninthValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
           
           
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            someoneWon = 1
          youWonLabel.text = "O Won"
            
        }

        //forward slash all X
        if (thirdValue == 1 && fifthValue == 1 && seventhValue == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //show alert notifying X won
            
       
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            youWonLabel.text = "X Won"

            
        }
        //forward slash all O
        if (thirdValue == 2 && fifthValue == 2 && seventhValue == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //show alert notifying X won
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            someoneWon = 1
          
            
            youWonLabel.text = "O Won"

        }

        if(firstIsFull == true && secondIsFull == true && thirdIsFull == true && fourthIsFull == true && fifthIsFull == true && sixthIsFull == true && seventhIsFull == true && eighthIsFull == true && ninthIsFull == true && someoneWon == 0)
        {
            //if tie occur
            resetButtonOutlet.hidden = false
            
            //show alert no one won
            
         
            
            
            //here we will update the label of the first player on the screen
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false

            
        }
        changePointer()
        

    
    }

    @IBAction func firstSquarePressed(sender: AnyObject) {
        
        if (firstIsFull == false)
        {
        var negateTurn = false
        if (turn == false)
        {        firstSquareOutlet.setImage(xImage, forState: .Normal)
            negateTurn = true
            firstValue = 1
        }
        else
        {
        firstSquareOutlet.setImage(oImage, forState: .Normal)
            negateTurn = false
            firstValue = 2
        }
        
        turn = negateTurn
        
        firstIsFull = true
            
            calculateWinner()
         
        }
    }
    
    @IBAction func secondSquarePressed(sender: AnyObject) {
        
        if (secondIsFull == false)
        {
        var negateTurn = false
        if (turn == false)
        {
        negateTurn = true
            secondSquareOutlet.setImage(xImage, forState: .Normal)
            secondValue = 1
        }
        else
        {
        negateTurn = false
            secondSquareOutlet.setImage(oImage, forState: .Normal)
            secondValue = 2
        }
        
        turn = negateTurn
    secondIsFull = true
            calculateWinner()
            
            
        }
    }
    
    @IBAction func thirdSquarePressed(sender: AnyObject) {
        
        if (thirdIsFull == false)
        {
        var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            thirdSquareOutlet.setImage(xImage, forState: .Normal)
            thirdValue = 1
        }
        else
        {
        negateTurn = false
            thirdSquareOutlet.setImage(oImage, forState: .Normal)
            thirdValue = 2
        }
        
        turn = negateTurn
        thirdIsFull = true
            calculateWinner()
            
    
        }
    }
    
    @IBAction func fourthSquarePressed(sender: AnyObject) {
        
        if (fourthIsFull == false)
        {
        var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            fourthSquareOutlet.setImage(xImage, forState: .Normal)
            fourthValue = 1
        }
        else
        {
        negateTurn = false
            fourthSquareOutlet.setImage(oImage, forState: .Normal)
            fourthValue = 2
        }
        
        turn = negateTurn
    fourthIsFull = true
            calculateWinner()
        }
    }

    @IBAction func fifthSquarePressed(sender: AnyObject) {
        
        if (fifthIsFull == false)
        {
    var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            fifthSquareOutlet.setImage(xImage, forState: .Normal)
            fifthValue = 1
        }
        else
        {
        negateTurn = false
            fifthSquareOutlet.setImage(oImage, forState: .Normal)
            fifthValue = 2
        }
        
        turn = negateTurn
        fifthIsFull = true
            calculateWinner()
        }
    }
    
    @IBAction func sixthSquarePressed(sender: AnyObject) {
        if (sixthIsFull == false)
        {
        var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            sixthSquareOutlet.setImage(xImage, forState: .Normal)
            sixthValue = 1
        }
        else
        {
        negateTurn = false
            sixthSquareOutlet.setImage(oImage, forState: .Normal)
            sixthValue = 2
        }
        
        turn = negateTurn
    sixthIsFull = true
            calculateWinner()
        }
    }
    
    @IBAction func seventhSquarePressed(sender: AnyObject) {
        
        if (seventhIsFull == false)
        {
        var negateTurn = false
        
        if(turn == false)
        {
        negateTurn = true
            seventhSquareOutlet.setImage(xImage, forState: .Normal)
            seventhValue = 1
        }
        else
        {
        negateTurn = false
            seventhSquareOutlet.setImage(oImage, forState: .Normal)
            seventhValue = 2
        }
        
        turn = negateTurn
        seventhIsFull = true
            calculateWinner()
        }
    }
    
    @IBAction func eigthSquarePressed(sender: AnyObject) {
        
        if (eighthIsFull == false)
        {
        var negateTurn = false
        if (turn == false)
        {
        negateTurn = true
            eigthSquareOutlet.setImage(xImage, forState: .Normal)
            eighthValue = 1
        }
        else
        {
        negateTurn = false
            eigthSquareOutlet.setImage(oImage, forState: .Normal)
            eighthValue = 2
        }
        
        turn = negateTurn
        eighthIsFull = true
            calculateWinner()
        }
    }
    
    @IBAction func ninthSquarePressed(sender: AnyObject) {
        if (ninthIsFull == false)
        {
    var negateTurn = false
        if (turn == false)
        {
        negateTurn = true
            ninthSquareOutlet.setImage(xImage, forState: .Normal)
            ninthValue = 1
        }
        else
        {
        negateTurn = false
            ninthSquareOutlet.setImage(oImage, forState: .Normal)
            ninthValue = 2
        }
        turn = negateTurn
        ninthIsFull = true
            calculateWinner()
        }
    }
    func emptyTiles()
    {
        firstSquareOutlet.setImage(whiteImage, forState: .Normal)
        secondSquareOutlet.setImage(whiteImage, forState: .Normal)
        thirdSquareOutlet.setImage(whiteImage, forState: .Normal)
        fourthSquareOutlet.setImage(whiteImage, forState: .Normal)
        fifthSquareOutlet.setImage(whiteImage, forState: .Normal)
        sixthSquareOutlet.setImage(whiteImage, forState: .Normal)
        seventhSquareOutlet.setImage(whiteImage, forState: .Normal)
        eigthSquareOutlet.setImage(whiteImage, forState: .Normal)
        ninthSquareOutlet.setImage(whiteImage, forState: .Normal)
        

    }
    @IBAction func resetButtonPressed(sender: AnyObject) {
        resetingTiles()
        resetButtonOutlet.hidden = true
       // firstSquareOutlet.setImage(, forState: .Normal)
        
        //firstSquareOutlet.setImage(nilImage, forState: .Normal)
        emptyTiles()
        youWonLabel.text = ""
    }
    
    
    @IBAction func resetScoreButtonPressed(sender: AnyObject) {
        
        firstPlayerScore = 0
        self.firstPlayerScoreLabel.text = String(firstPlayerScore)
        secondPlayerScore = 0
        
        self.secondPlayerScoreLabel.text = String(secondPlayerScore)
        
    emptyTiles()
        youWonLabel.text = ""
        
    }
    
    
}

