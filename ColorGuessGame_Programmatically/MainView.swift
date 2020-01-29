//
//  MainView.swift
//  ColorGuessGame_Programmatically
//
//  Created by Tiffany Obi on 1/29/20.
//  Copyright © 2020 Tiffany Obi. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let defaultMessage = "Guess The Color"
    
    public lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemIndigo
        label.textAlignment = .center
        label.font = UIFont(name: "Snell Roundhand", size: 20)
        label.text = defaultMessage
        label.textColor = .white
        return label
    }()
    
    public lazy var colorView: UIView = {
        
        let colorView = UIView()
        colorView.backgroundColor = .black
        
        return colorView
    }()

    
    public lazy var redButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemRed
        button.tag = 0
        return button
    }()
    
    public lazy var blueButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.tag = 1
        return button
    }()
    
    public lazy var greenButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.tag = 2
        return button
    }()
    
    public lazy var stack: UIStackView = {
        
        let stack = UIStackView()
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame:UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        commonInit()
    }
    
    
    private func commonInit(){
        setupMessageLabelConstraints()
        setUpColorView()
        setupStackViewConstraints()
    }
    
    
    
    private func setupMessageLabelConstraints() {
        
        addSubview(messageLabel)
        
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        // note:
        //if you dont want to use an array you can set up each contraint seperately.
        //        messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        
        //Step:3
        NSLayoutConstraint.activate([
            // set top anchor 20 pointe to the safe area
            
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            
            
            // set padding at he leading aand trailing of the mainView
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setUpColorView(){
        addSubview(colorView)
        
        colorView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
        colorView.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 20),
        colorView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
        colorView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
    
        ])
    
        colorView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
    }
    
    private func setupStackViewConstraints(){
        
          stack.distribution = .fillEqually
        
        redButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        
        // set contriants - center x is horizontal, center y is vertical
        addSubview(stack)
        
        stack.addArrangedSubview(redButton)
        stack.addArrangedSubview(blueButton)
        stack.addArrangedSubview(greenButton)
        
        
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            stack.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
            stack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8)
            
            
        ])
        
    }
    
    
}
