//
//  StoreDelegate.swift
//  Calculator
//
//  Created by Luis Santiago  on 11/12/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import Foundation
import UIKit;

protocol StoreDelegate{
    func didNumberPress(_ sender: UIButton);
    func didSymbolPresS(_ sender:UIButton);
}
