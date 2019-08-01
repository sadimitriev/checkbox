//
//  ViewController.swift
//  checkbox
//
//  Created by Sergey Dimitriev on 31/07/2019.
//  Copyright © 2019 Sergey Dimitriev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstButton: RadioButton!
    @IBOutlet weak var secondButton: RadioButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton?.alternateButton = [secondButton!]
        secondButton?.alternateButton = [firstButton!]
    }
    
    override func awakeFromNib() {
        self.view.layoutIfNeeded()
        firstButton.isSelected = true
        secondButton.isSelected = false
    }
}
