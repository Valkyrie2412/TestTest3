//
//  Button.swift
//  TestTest3
//
//  Created by Hiếu Nguyễn on 12/19/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    
    
    // Images
    let checkedBox = UIImage(named: "Image")
    let uncheckBox = UIImage(named: "white")
    
    // Bool property
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
                self.setImage(uncheckBox, for: UIControlState.normal)
                self.setBackgroundImage(UIImage(named: "white"), for: UIControlState.normal)
            } else {
                self.setImage(checkedBox, for: UIControlState.normal)
                self.setBackgroundImage(UIImage(named: "white"), for: UIControlState.normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton)  {
        
        if sender == self {
            isChecked = !isChecked
        }
    }
}

extension String
{
    func isStringAnInt() -> Bool {
        
        if let _ = Int(self) {
            return true
        }
        return false
    }
}
