//
//  ViewController.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/2/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    public let labelResult : UILabel = {
        let label = UILabel();
        label.translatesAutoresizingMaskIntoConstraints = false;
        label.backgroundColor = .blue;
        label.textAlignment = .right;
        label.adjustsFontSizeToFitWidth = true;
        label.textColor = .white;
        label.text = "0";
        label.font = UIFont.systemFont(ofSize: 38);
        return label;
    }();
    
    public let mainStack : UIStackView = {
        let stack = UIStackView();
        stack.distribution = .fillEqually;
        stack.translatesAutoresizingMaskIntoConstraints = false;
        stack.alignment = .fill;
        stack.spacing = 10;
        stack.axis = .vertical;
        return stack;
    }();
    
    public let piCalculation : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("π", for: .normal);
        return button;
    }();
    
    public let numberSeven : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("7", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberEight : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("8", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberNine : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("9", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let rootSquareButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("√", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        
        return button;
    }();
    
    public let numberFourButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("4", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberFiveButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("5", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberSixbutton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("6", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberOneButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("1", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberTwoButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("2", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberThreeButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("3", for: .normal)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitleColor(.blue, for: .normal);
        return button;
    }();
    
    public let numberZeroButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("0", for: .normal)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        button.setTitleColor(.blue, for: .normal);
        return button;
    }();
    
    
    public let emptyButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("0", for: .normal)
        button.backgroundColor = .white;
        return button;
    }();

    public let emptyButton2 : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("0", for: .normal)
        button.backgroundColor = .white;
        return button;
    }();
    
    public let emptyButton3 : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("0", for: .normal)
        button.backgroundColor = .white;
        return button;
    }();
    
    public let emptyButton4 : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("0", for: .normal)
        button.backgroundColor = .white;
        return button;
    }();
    
    var userIsInTheMiddleOfTyping = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initView();
        setUpLayout();
    }
}

