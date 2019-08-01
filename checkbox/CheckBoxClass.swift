//
//  CheckBoxClass.swift
//  checkbox
//
//  Created by Sergey Dimitriev on 31/07/2019.
//  Copyright © 2019 Sergey Dimitriev. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    private let childView = UIView();
    
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
                    self.childView.backgroundColor = UIColor.green
                    self.childView.frame.origin.x = 30
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
                    self.childView.frame.origin.x = 0
                    self.childView.backgroundColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0)
                }, completion: nil)
            }
        }
    }
    
    override func awakeFromNib() {
        
        childView.isUserInteractionEnabled = false
        
        self.backgroundColor = .clear
        self.layer.cornerRadius = self.frame.size.height / 2.0
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red:0.86, green:0.86, blue:0.86, alpha:1.0).cgColor
        
        self.addSubview(childView);
        childView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        childView.layer.cornerRadius = self.frame.size.height / 2.0
        childView.backgroundColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0)
        
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}
