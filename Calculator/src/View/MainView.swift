//
//  UIComponents.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/3/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import Foundation;
import UIKit;


class MainView: UIView {
    
    var shouldSetupConstraints = true
    var mDelegate:StoreDelegate!;
    
    static var mainColor = UIColor(red: 0/255, green: 122/255, blue: 250/255, alpha: 1);
    
    public let labelResult : UILabel = {
        let label = UILabel();
        label.translatesAutoresizingMaskIntoConstraints = false;
        label.backgroundColor = MainView.mainColor;
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
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(MainView.mainColor, for: .normal);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("π", for: .normal);
        button.addTarget(self, action: #selector(onSymbolClick), for: .touchUpInside)
        return button;
    }();

    public let plusButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(MainView.mainColor, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitle("+", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let restButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitle("-", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let multiplyButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitle("×", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let divideButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitle("÷", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();
    
    public let numberSeven : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitle("7", for: .normal);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberEight : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("8", for: .normal);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberNine : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitle("9", for: .normal);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let rootSquareButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("√", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onSymbolClick), for: .touchUpInside)

        return button;
    }();

    public let numberFourButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberFiveButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("5", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberSixbutton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("6", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberOneButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("1", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberTwoButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("2", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        return button;
    }();

    public let numberThreeButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("3", for: .normal)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.setTitleColor(.blue, for: .normal);
        button.titleLabel?.font = .systemFont(ofSize: 22)
        return button;
    }();

    public let numberZeroButton : UIButton = {
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("0", for: .normal)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.setTitleColor(.blue, for: .normal);
        return button;
    }();

    public let cos : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.addTarget(self, action: #selector(onSymbolClick), for: .touchUpInside)
        button.setTitle("cos", for: .normal)
        button.setTitleColor(.blue, for: .normal);
        button.titleLabel?.font = .systemFont(ofSize: 22);
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0);
        return button;
    }();

    public let changeSign : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("±", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0)
        return button;
    }();

    public let dotButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle(".", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0)
        return button;
    }();

    public let equalButton : UIButton = {
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("=", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0)
        return button;
    }();
    
    override init(frame: CGRect){
        super.init(frame:frame);
        initView();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        if shouldSetupConstraints{
            setUpLayout();
            shouldSetupConstraints = false;
        }
        super.updateConstraints();
    }
    
    func setUpLayout(){
        NSLayoutConstraint.activate([
            labelResult.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            labelResult.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant : 30),
            labelResult.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            labelResult.heightAnchor.constraint(equalToConstant: 50)
            ])

        mainStack.topAnchor.constraint(equalTo: labelResult.bottomAnchor, constant: 20).isActive = true;
        mainStack.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant : 30).isActive = true;
        mainStack.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor , constant : -30).isActive = true;
        mainStack.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true;

        let firstRow = UIStackView(arrangedSubviews: [plusButton, restButton, multiplyButton,divideButton]);
        firstRow.distribution = .fillEqually;
        firstRow.alignment = .fill;
        firstRow.spacing = 5;
        firstRow.translatesAutoresizingMaskIntoConstraints = false;

        let secondRow =  UIStackView(arrangedSubviews: [piCalculation, numberSeven, numberEight,numberNine]);
        secondRow.distribution = .fillEqually;
        secondRow.alignment = .fill;
        secondRow.spacing = 5;
        secondRow.translatesAutoresizingMaskIntoConstraints = false;
        
        let thirdRow = UIStackView(arrangedSubviews: [rootSquareButton,numberFourButton,numberFiveButton,numberSixbutton]);
        thirdRow.distribution = .fillEqually;
        thirdRow.alignment = .fill;
        thirdRow.spacing = 5;
        thirdRow.translatesAutoresizingMaskIntoConstraints = false;


        let fourthRow = UIStackView(arrangedSubviews: [cos,numberOneButton,numberTwoButton,numberThreeButton])

        fourthRow.distribution = .fillEqually;
        fourthRow.alignment = .fill;
        fourthRow.spacing = 5;
        fourthRow.translatesAutoresizingMaskIntoConstraints = false;

        let fifthRow = UIStackView(arrangedSubviews: [changeSign,dotButton,numberZeroButton,equalButton]);
        fifthRow.distribution = .fillEqually;
        fifthRow.alignment = .fill;
        fifthRow.spacing = 5;
        fifthRow.translatesAutoresizingMaskIntoConstraints = false;
        
        mainStack.addArrangedSubview(firstRow);
        mainStack.addArrangedSubview(secondRow);
        mainStack.addArrangedSubview(thirdRow);
        mainStack.addArrangedSubview(fourthRow);
        mainStack.addArrangedSubview(fifthRow);

        //Setting up constraints for firstRow;
        firstRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        firstRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        
        secondRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        secondRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        
        thirdRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        thirdRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        
        fourthRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        fourthRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        
        fifthRow.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor).isActive = true;
        fifthRow.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor).isActive = true;
        
    }
    
    func initView(){
        self.addSubview(labelResult);
        self.backgroundColor = .white;
        self.addSubview(mainStack);
    }
    
    @objc func onClick(_ sender: UIButton){
        mDelegate.didNumberPress(sender);
    }
    
    @objc func onSymbolClick(_ sender: UIButton){
        mDelegate.didSymbolPresS(sender);
    }
}
