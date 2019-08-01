//
//  RadioButtonClass.swift
//  checkbox
//
//  Created by Sergey Dimitriev on 31/07/2019.
//  Copyright © 2019 Sergey Dimitriev. All rights reserved.
//

import UIKit

class RadioButton: UIButton {
    
    private let childView = UIView();
    
    var alternateButton:Array<RadioButton>?
    
    override func awakeFromNib() {
        
        self.addSubview(childView);
        childView.frame = CGRect(x: -30, y: 5, width: 20, height: 20)
        childView.layer.cornerRadius = self.frame.height / 2.0
        childView.backgroundColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0)
        
//        self.layer.cornerRadius = 5
//        self.layer.borderWidth = 2.0
//        self.layer.masksToBounds = true
    }
    
    func unselectAlternateButtons(){
        if alternateButton != nil {
            self.isSelected = true
            
            for aButton:RadioButton in alternateButton! {
                aButton.isSelected = false
            }
        }else{
            toggleButton()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unselectAlternateButtons()
        super.touchesBegan(touches, with: event)
    }
    
    func toggleButton(){
        self.isSelected = !isSelected
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                self.childView.backgroundColor = UIColor.red
            } else {
                self.childView.backgroundColor = UIColor.green
            }
        }
    }
}
