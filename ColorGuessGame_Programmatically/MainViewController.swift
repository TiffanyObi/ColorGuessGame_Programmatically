//
//  ViewController.swift
//  ColorGuessGame_Programmatically
//
//  Created by Tiffany Obi on 1/28/20.
//  Copyright © 2020 Tiffany Obi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    private let mainView = MainView()
    
    var randRed: CGFloat = 0.0
    var randBlue: CGFloat = 0.0
    var randGreen: CGFloat = 0.0
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
       changeColor()
        mainView.redButton.addTarget(self, action: #selector(guessMysteryColor(sender:)), for: .touchUpInside)
        mainView.blueButton.addTarget(self, action: #selector(guessMysteryColor(sender:)), for: .touchUpInside)
        mainView.greenButton.addTarget(self, action: #selector(guessMysteryColor(sender:)), for: .touchUpInside)
    }
    
    func changeColor () {
        
        
        randRed = CGFloat.random(in: 0...1)
        randBlue = CGFloat.random(in: 0...1)
        randGreen = CGFloat.random(in: 0...1)
        
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        
        mainView.colorView.backgroundColor = myColor
        mainView.redButton.backgroundColor = .systemRed
        mainView.blueButton.backgroundColor = .systemBlue
        mainView.greenButton.backgroundColor = .systemGreen
        
        
    }

    @objc
    private func guessMysteryColor(sender: UIButton){
        
        if sender.tag == 0 {
    if  randRed >= randGreen && randRed >= randBlue {
        changeColor()
        print("red wins")
            sender.backgroundColor = .black
            
        } else if randBlue >= randGreen && randBlue >= randRed {
             changeColor()
           print("blue wins")
             sender.backgroundColor = .black
        } else if randGreen >= randRed && randGreen >= randBlue {
            changeColor()
            print("green wins")
             sender.backgroundColor = .black
        }
    
            changeColor()
        } else if sender.tag == 1 {
            if  randRed >= randGreen && randRed >= randBlue {
            changeColor()
            print("red wins")
                sender.backgroundColor = .black
                
            } else if randBlue >= randGreen && randBlue >= randRed {
                 changeColor()
               print("blue wins")
                 sender.backgroundColor = .black
            } else if randGreen >= randRed && randGreen >= randBlue {
                changeColor()
                print("green wins")
                 sender.backgroundColor = .black
            }
            changeColor()
        } else if sender.tag == 2 {
            if  randRed >= randGreen && randRed >= randBlue {
            changeColor()
            print("red wins")
                sender.backgroundColor = .black
                
            } else if randBlue >= randGreen && randBlue >= randRed {
                 changeColor()
               print("blue wins")
                 sender.backgroundColor = .black
            } else if randGreen >= randRed && randGreen >= randBlue {
                changeColor()
                print("green wins")
                 sender.backgroundColor = .black
            }
            changeColor()
        }
        
    
}

    private func disableButtons() {
        mainView.redButton.isEnabled = false
        mainView.blueButton.isEnabled = false
        mainView.greenButton.isEnabled = false
        
    }

}
