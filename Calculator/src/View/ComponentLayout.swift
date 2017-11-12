//
//  UIComponents.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/3/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import Foundation;
import UIKit;

extension ViewController {
    func setUpLayout(){
        NSLayoutConstraint.activate([
            labelResult.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            labelResult.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant : 50),
            labelResult.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            labelResult.heightAnchor.constraint(equalToConstant: 50)
            ])
    
        //main Stack;
        mainStack.topAnchor.constraint(equalTo: labelResult.bottomAnchor, constant: 20).isActive = true;
        mainStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant : 30).isActive = true;
        mainStack.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant : -30).isActive = true;
        
        let firstRow = UIStackView(arrangedSubviews: [piCalculation, numberSeven, numberEight,numberNine]);
        firstRow.distribution = .fillEqually;
        firstRow.alignment = .fill;
        firstRow.spacing = 5;
        firstRow.translatesAutoresizingMaskIntoConstraints = false;
        
        let secondRow = UIStackView(arrangedSubviews: [rootSquareButton,numberFourButton,numberFiveButton,numberSixbutton]);
        secondRow.distribution = .fillEqually;
        secondRow.alignment = .fill;
        secondRow.spacing = 5;
        secondRow.translatesAutoresizingMaskIntoConstraints = false;
        
        let thirdRow = UIStackView(arrangedSubviews: [emptyButton,numberOneButton,numberTwoButton,numberThreeButton])
        thirdRow.distribution = .fillEqually;
        thirdRow.alignment = .fill;
        thirdRow.spacing = 5;
        thirdRow.translatesAutoresizingMaskIntoConstraints = false;
        
        
        let fourthRow = UIStackView(arrangedSubviews: [emptyButton2,emptyButton3,numberZeroButton,emptyButton4]);
        
        fourthRow.distribution = .fillEqually;
        fourthRow.alignment = .fill;
        fourthRow.spacing = 5;
        fourthRow.translatesAutoresizingMaskIntoConstraints = false;
        
        
        mainStack.addArrangedSubview(firstRow);
        mainStack.addArrangedSubview(secondRow);
        mainStack.addArrangedSubview(thirdRow);
        mainStack.addArrangedSubview(fourthRow);
        
        //Setting up constraints for firstRow;
        firstRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        firstRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        firstRow.heightAnchor.constraint(equalToConstant: 60).isActive = true;
        
        secondRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        secondRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        secondRow.heightAnchor.constraint(equalToConstant: 60).isActive = true;
    
        thirdRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        thirdRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        thirdRow.heightAnchor.constraint(equalToConstant: 60).isActive = true;
        
        fourthRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        fourthRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        fourthRow.heightAnchor.constraint(equalToConstant: 60).isActive = true;
        
    }
        
    func initView(){
        view.addSubview(labelResult);
        view.backgroundColor = .white;
        view.addSubview(mainStack);
    }
}
