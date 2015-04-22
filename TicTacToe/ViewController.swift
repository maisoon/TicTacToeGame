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
    let leftPointer = UIImage(named: "leftPointer.jpeg") as UIImage!
    let rightPointer = UIImage(named: "rightPointer.jpg") as UIImage!
    
    var turn = true
    
    var firstPlayerScore:Int = 0
    var secondPlayerScore:Int = 0
    
    var squareIsFull: [Bool] = [false,false,false,false,false,false,false,false,false]
    
    var squareValue: [Int] = [0,0,0,0,0,0,0,0,0]
    
    //linking IBOutlets
    
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
        //resetingTiles()
        firstPlayerImage.image = UIImage(named: "tic-tac-toe-X.png")
        
        secondPlayerImage.image = UIImage(named: "tic-tac-toe-O.png")
        
        var randomizeTurn = arc4random_uniform(2)
        if (randomizeTurn == 0)
        {
            turn = false
        }
        else
        {
            turn = true
        }
        changePointer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changePointer()
    {
        if (turn == true)
        {
            //indicate that its the player on the right turn
            rightPointerImage.image = UIImage(named: "rightPointer.jpg")
            
            //set the indicator for the player on the left to nil
            leftPointerImage.image = nil
        }
        else
        {
            //indicate that its the player on the left turn
            leftPointerImage.image = UIImage(named: "leftPointer.jpeg")
            
            //set the indicator for the player on the right to nil
            rightPointerImage.image = nil
        }
        
    }
    
    func resetingTiles()
    {
        for index in 0 ... 8
        {
            //reseting the tiles to their initial state, to allow the players to play
            squareIsFull[index] = false
            
            //reseting the values of the tiles to initial state
            squareValue[index] = 0
        }
        
    }
    
    func stopGame()
    {
        for index in 0 ... 8
        {
            //stating the tiles as full, to not allow the player to continue
            squareIsFull[index] = true
        }
        
        //updating score labels for both players
        firstPlayerScoreLabel.text = String(firstPlayerScore)
        secondPlayerScoreLabel.text = String(secondPlayerScore)
        
        
    }
    
    func calculateWinner()
    {
        //this function will be called to check if a winning situation has ocurred
        
        //this is an indicator to state that someone has won and call to stop the game and reset it
        var someoneWon = 0
        
        //first row all X
        if (squareValue[0] == 1 && squareValue[1] == 1 && squareValue[2] == 1)
        {
            //update the X score; increasing by 1
            firstPlayerScore += 1
            
            //allow the user to reset the tiles
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = true
            
            //set the idicator that someone has won
            someoneWon = 1
            
            //update winning label
            youWonLabel.text = "X Won"
            
        }
        
        //first row all O
        if (squareValue[0] == 2 && squareValue[1] == 2 && squareValue[2] == 2)
        {
            //update the O score; increasing by 1
            secondPlayerScore += 1
            
            //allow the user to reset the tiles
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            
            //set the idicator that someone has won
            someoneWon = 1
            
            //update winning label
            youWonLabel.text = "O Won"
            
        }
        
        //second row all X
        if (squareValue[3] == 1 && squareValue[4] == 1 && squareValue[5] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            youWonLabel.text = "X Won"
            
        }
        
        
        //second row all 0
        if (squareValue[3] == 2 && squareValue[4] == 2 && squareValue[5] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
        }
        
        
        
        //third row all X
        if (squareValue[6] == 1 && squareValue[7] == 1 && squareValue[8] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"
            
        }
        
        //third row all O
        if (squareValue[6] == 2 && squareValue[7] == 2 && squareValue[8] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
        }
        
        //first column all X
        if (squareValue[0] == 1 && squareValue[3] == 1 && squareValue[6] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"
        }
        
        
        //first column all O
        
        if (squareValue[0] == 2 && squareValue[3] == 2 && squareValue[6] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
        }
        
        
        //second column all X
        
        if (squareValue[1] == 1 && squareValue[4] == 1 && squareValue[7] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"
            
        }
        
        //second column all O
        
        if (squareValue[1] == 2 && squareValue[4] == 2 && squareValue[7] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
            
        }
        
        //third column all X
        if (squareValue[2] == 1 && squareValue[5] == 1 && squareValue[8] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"
        }
        
        //third column all O
        if (squareValue[2] == 2 && squareValue[5] == 2 && squareValue[8] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
        }
        
        //backward slash all X
        
        if (squareValue[0] == 1 && squareValue[4] == 1 && squareValue[8] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            
            youWonLabel.text = "X Won"
            
        }
        
        //backward slash all O
        if (squareValue[0] == 2 && squareValue[4] == 2 && squareValue[8] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            youWonLabel.text = "O Won"
            
        }
        
        //forward slash all X
        if (squareValue[2] == 1 && squareValue[4] == 1 && squareValue[6] == 1)
        {
            firstPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = true
            someoneWon = 1
            
            youWonLabel.text = "X Won"
            
        }
        
        //forward slash all O
        if (squareValue[2] == 2 && squareValue[4] == 2 && squareValue[6] == 2)
        {
            secondPlayerScore += 1
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            someoneWon = 1
            
            
            youWonLabel.text = "O Won"
            
        }
        
        
        if(squareIsFull[0] == true && squareIsFull[1] == true && squareIsFull[2] == true && squareIsFull[3] == true && squareIsFull[4] == true && squareIsFull[5] == true && squareIsFull[6] == true && squareIsFull[7] == true && squareIsFull[8] == true && someoneWon == 0)
        {
            //if tie occur
            resetButtonOutlet.hidden = false
            
            //stop the game
            stopGame()
            
            //change the turn to the component
            turn = false
            youWonLabel.text = "No one!"
        }
       
            changePointer()
        
    }
    
    @IBAction func firstSquarePressed(sender: AnyObject) {
        
        //check if a square already has a value
        if (squareIsFull[0] == false)
        {
            //check whos player's turn was it; X or O
            if (turn == false)
            {
                //X turn
                sender.setImage(xImage, forState: .Normal)
                
                //change turn to O
                turn = true
                
                //indicate that a X exist in that square
                squareValue[0] = 1
            }
            else
            {
                //O turn
                sender.setImage(oImage, forState: .Normal)
                
                //change turn to X
                turn = false
                
                //indicate that an O exist in that square
                squareValue[0] = 2
            }
            
            //indicate that this square is no longer available
            squareIsFull[0] = true
            
            //check for winner
            calculateWinner()
            
        }
    }
    
    @IBAction func secondSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[1] == false)
        {
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[1] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[1] = 2
            }
            
            squareIsFull[1] = true
            calculateWinner()
            
            
        }
    }
    
    @IBAction func thirdSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[2] == false)
        {
            
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[2] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[2] = 2
            }
            
            squareIsFull[2] = true
            calculateWinner()
            
            
        }
    }
    
    @IBAction func fourthSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[3] == false)
        {
            
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[3] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[3] = 2
            }
            
            squareIsFull[3] = true
            calculateWinner()
        }
    }
    
    @IBAction func fifthSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[4] == false)
        {
            
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[4] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[4] = 2
            }
            
            squareIsFull[4] = true
            calculateWinner()
        }
    }
    
    @IBAction func sixthSquarePressed(sender: AnyObject) {
        if (squareIsFull[5] == false)
        {
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[5] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[5] = 2
            }
            
            squareIsFull[5] = true
            calculateWinner()
        }
    }
    
    @IBAction func seventhSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[6] == false)
        {
            if(turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[6] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[6] = 2
            }
            
            squareIsFull[6] = true
            calculateWinner()
        }
    }
    
    @IBAction func eigthSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[7] == false)
        {
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[7] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[7] = 2
            }
            
            squareIsFull[7] = true
            calculateWinner()
        }
    }
    
    @IBAction func ninthSquarePressed(sender: AnyObject) {
        if (squareIsFull[8] == false)
        {
            if (turn == false)
            {
                turn = true
                sender.setImage(xImage, forState: .Normal)
                squareValue[8] = 1
            }
            else
            {
                turn = false
                sender.setImage(oImage, forState: .Normal)
                squareValue[8] = 2
            }
            
            squareIsFull[8] = true
            calculateWinner()
        }
    }
    func emptyTiles()
    {
        //this function will be called when the user request to reset the game OR reset the score
        
        //reset all tiles images into nil
        firstSquareOutlet.setImage(nil, forState: .Normal)
        secondSquareOutlet.setImage(nil, forState: .Normal)
        thirdSquareOutlet.setImage(nil, forState: .Normal)
        fourthSquareOutlet.setImage(nil, forState: .Normal)
        fifthSquareOutlet.setImage(nil, forState: .Normal)
        sixthSquareOutlet.setImage(nil, forState: .Normal)
        seventhSquareOutlet.setImage(nil, forState: .Normal)
        eigthSquareOutlet.setImage(nil, forState: .Normal)
        ninthSquareOutlet.setImage(nil, forState: .Normal)
        
        
    }
    @IBAction func resetButtonPressed(sender: AnyObject) {
        
        //this function will be called when the user press on the "Reset Button" requesting to start new tile without affecting the score
        
        //reset the values of the tiles and the availability of a tile
        resetingTiles()
        
        //hide the reset button
        resetButtonOutlet.hidden = true
        
        //reset all tile images into nil
        emptyTiles()
        
        //set the wonLabel into empty string
        youWonLabel.text = ""
    }
    
    
    @IBAction func resetScoreButtonPressed(sender: AnyObject) {
        
        //reset the score of player one
        firstPlayerScore = 0
        
        //update the label score of player one
        self.firstPlayerScoreLabel.text = String(firstPlayerScore)
        
        //reset the score of player 2
        secondPlayerScore = 0
        
        //update the label score of player 2
        self.secondPlayerScoreLabel.text = String(secondPlayerScore)
        
        
        //reset the values of the tiles and the availability of a tile
        resetingTiles()
        
        //reset all tile images into nil
        emptyTiles()
        youWonLabel.text = ""
        resetButtonOutlet.hidden = true
        
    }
    
    
}

