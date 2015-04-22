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
        for index in 0 ... 8
        {
        squareIsFull[index] = false
        squareValue[index] = 0
        }
        
    }
    
    func stopGame()
    {
        for index in 0 ... 8
        {
        squareIsFull[index] = true
        }
   
        
        firstPlayerScoreLabel.text = String(firstPlayerScore)
        secondPlayerScoreLabel.text = String(secondPlayerScore)
    
  
    }
    
    
    func calculateWinner()
    {
        
        var someoneWon = 0
    //first row all X
        if (squareValue[0] == 1 && squareValue[1] == 1 && squareValue[2] == 1)
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
       
        //first row all O
        if (squareValue[0] == 2 && squareValue[1] == 2 && squareValue[2] == 2)
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
        }

        changePointer()
        

    
    }

    @IBAction func firstSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[0] == false)
        {
        var negateTurn = false
        if (turn == false)
        {        firstSquareOutlet.setImage(xImage, forState: .Normal)
            negateTurn = true
            squareValue[0] = 1
        }
        else
        {
        firstSquareOutlet.setImage(oImage, forState: .Normal)
            negateTurn = false
            squareValue[0] = 2
        }
        
        turn = negateTurn
        
        squareIsFull[0] = true
            
            calculateWinner()
         
        }
    }
    
    @IBAction func secondSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[1] == false)
        {
        var negateTurn = false
        if (turn == false)
        {
        negateTurn = true
            secondSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[1] = 1
        }
        else
        {
        negateTurn = false
            secondSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[1] = 2
        }
        
        turn = negateTurn
    squareIsFull[1] = true
            calculateWinner()
            
            
        }
    }
    
    @IBAction func thirdSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[2] == false)
        {
        var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            thirdSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[2] = 1
        }
        else
        {
        negateTurn = false
            thirdSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[2] = 2
        }
        
        turn = negateTurn
        squareIsFull[2] = true
            calculateWinner()
            
    
        }
    }
    
    @IBAction func fourthSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[3] == false)
        {
        var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            fourthSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[3] = 1
        }
        else
        {
        negateTurn = false
            fourthSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[3] = 2
        }
        
        turn = negateTurn
    squareIsFull[3] = true
            calculateWinner()
        }
    }

    @IBAction func fifthSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[4] == false)
        {
    var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            fifthSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[4] = 1
        }
        else
        {
        negateTurn = false
            fifthSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[4] = 2
        }
        
        turn = negateTurn
        squareIsFull[4] = true
            calculateWinner()
        }
    }
    
    @IBAction func sixthSquarePressed(sender: AnyObject) {
        if (squareIsFull[5] == false)
        {
        var negateTurn = false
        
        if (turn == false)
        {
        negateTurn = true
            sixthSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[5] = 1
        }
        else
        {
        negateTurn = false
            sixthSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[5] = 2
        }
        
        turn = negateTurn
    squareIsFull[5] = true
            calculateWinner()
        }
    }
    
    @IBAction func seventhSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[6] == false)
        {
        var negateTurn = false
        
        if(turn == false)
        {
        negateTurn = true
            seventhSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[6] = 1
        }
        else
        {
        negateTurn = false
            seventhSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[6] = 2
        }
        
        turn = negateTurn
        squareIsFull[6] = true
            calculateWinner()
        }
    }
    
    @IBAction func eigthSquarePressed(sender: AnyObject) {
        
        if (squareIsFull[7] == false)
        {
        var negateTurn = false
        if (turn == false)
        {
        negateTurn = true
            eigthSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[7] = 1
        }
        else
        {
        negateTurn = false
            eigthSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[7] = 2
        }
        
        turn = negateTurn
        squareIsFull[7] = true
            calculateWinner()
        }
    }
    
    @IBAction func ninthSquarePressed(sender: AnyObject) {
        if (squareIsFull[8] == false)
        {
    var negateTurn = false
        if (turn == false)
        {
        negateTurn = true
            ninthSquareOutlet.setImage(xImage, forState: .Normal)
            squareValue[8] = 1
        }
        else
        {
        negateTurn = false
            ninthSquareOutlet.setImage(oImage, forState: .Normal)
            squareValue[8] = 2
        }
        turn = negateTurn
        squareIsFull[8] = true
            calculateWinner()
        }
    }
    func emptyTiles()
    {
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
        resetingTiles()
        resetButtonOutlet.hidden = true
    
        emptyTiles()
        youWonLabel.text = ""
    }
    
    
    @IBAction func resetScoreButtonPressed(sender: AnyObject) {
        
        firstPlayerScore = 0
        self.firstPlayerScoreLabel.text = String(firstPlayerScore)
        secondPlayerScore = 0
        
        self.secondPlayerScoreLabel.text = String(secondPlayerScore)
        
    emptyTiles()
        resetingTiles()
        youWonLabel.text = ""
        resetButtonOutlet.hidden = true
        
    }
    
    
}

