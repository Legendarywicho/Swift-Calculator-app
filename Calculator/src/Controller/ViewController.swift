//
//  ViewController.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/2/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoreDelegate {
    
    var mainLayout: MainView!;
    
    //Math Fuctions
    private var brain = CalculatorBrain();
    
    var userIsInTheMiddleOfTyping = false;
    
    var displayValue : Double {
        get{
            return Double(mainLayout.labelResult.text!)!;
        }
        set{
            mainLayout.labelResult.text = String(newValue);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLayout = MainView(frame : CGRect.zero);
        mainLayout.mDelegate = self;
        self.view.addSubview(mainLayout);
        setUpLayout();
    }
    
    private func setUpLayout(){
        mainLayout.translatesAutoresizingMaskIntoConstraints = false;
        NSLayoutConstraint.activate([
            mainLayout.widthAnchor.constraint(equalTo: view.widthAnchor),
            mainLayout.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainLayout.heightAnchor.constraint(equalTo: view.heightAnchor)]);
    }
    
    func didNumberPress(_ sender: UIButton) {
        let tittleDigit = sender.currentTitle;
        let currentDigit = mainLayout.labelResult.text!;
        if userIsInTheMiddleOfTyping{
            mainLayout.labelResult.text = currentDigit+tittleDigit!;
        }
        else{
            mainLayout.labelResult.text = tittleDigit!;
            userIsInTheMiddleOfTyping = true;
        }
        
        checkIfLimitIsOff();
    }
    
    func didSymbolPresS(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping{
            brain.setOperand(displayValue);
            userIsInTheMiddleOfTyping = false;
        }
        if let matematicalSymbol = sender.currentTitle{
            brain.performOperation(matematicalSymbol);
        }
        if let result = brain.result {
            displayValue = result;
        }
    }
    
    
    func checkIfLimitIsOff(){
        let currentCount = mainLayout.labelResult.text?.count;
        if(currentCount!>=12){
            //We stop reciving input
            print("We got to the limit");
            removeAllTargets();
        }
    }

    
    func removeAllTargets(){
        mainLayout.numberSeven.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberEight.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberNine.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberFourButton.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberFiveButton.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberSixbutton.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberOneButton.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberTwoButton.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberThreeButton.removeTarget(nil, action: nil, for: .allEvents)
        mainLayout.numberZeroButton.removeTarget(nil, action: nil, for: .allEvents)
    }
}

