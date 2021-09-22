//
//  RoundedButton.swift
//  Calculator
//
//  Created by Tanav Sharma on 2021-09-21.
//

import UIKit

class RoundedButton: UIButton {

    @IBInspectable var roundedRectangle:Bool = false {
        didSet{
            if roundedRectangle {
                layer.cornerRadius = 15
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundedRectangle{
            layer.cornerRadius = 15
        }
    }

}
