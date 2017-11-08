//
//  Operations.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/8/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import Foundation
import UIKit

extension ViewController{
    
    @objc func onClick(_ sender:UIButton){
        let tittleDigit = sender.currentTitle;
        let currentDigit = labelResult.text!;
        if userIsInTheMiddleOfTyping{
            labelResult.text = currentDigit+tittleDigit!;
        }
        else{
            labelResult.text = tittleDigit!;
            userIsInTheMiddleOfTyping = true;
        }
        
        checkIfLimitIsOff();
    }
    
    func checkIfLimitIsOff(){
        let currentCount = labelResult.text?.count;
        if(currentCount!>=12){
            //We stop reciving input
            removeAllTargets();
        }
    }
    
    func removeAllTargets(){
        numberSeven.removeTarget(nil, action: nil, for: .allEvents)
        numberEight.removeTarget(nil, action: nil, for: .allEvents)
        numberNine.removeTarget(nil, action: nil, for: .allEvents)
        numberFourButton.removeTarget(nil, action: nil, for: .allEvents)
        numberFiveButton.removeTarget(nil, action: nil, for: .allEvents)
        numberSixbutton.removeTarget(nil, action: nil, for: .allEvents)
        numberOneButton.removeTarget(nil, action: nil, for: .allEvents)
        numberTwoButton.removeTarget(nil, action: nil, for: .allEvents)
        numberThreeButton.removeTarget(nil, action: nil, for: .allEvents)
        numberZeroButton.removeTarget(nil, action: nil, for: .allEvents)
    }
    
}
