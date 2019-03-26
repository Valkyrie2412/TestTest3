//
//  ViewController.swift
//  TestTest3
//
//  Created by Hiếu Nguyễn on 8/1/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonImage: UIButton!
    var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        colorView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        self.view.addSubview(colorView)
        
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        if buttonImage.currentBackgroundImage == #imageLiteral(resourceName: "Violet") {
            buttonImage.setBackgroundImage(#imageLiteral(resourceName: "Snow"), for: .normal)
        } else {
            buttonImage.setBackgroundImage(#imageLiteral(resourceName: "Violet"), for: .normal)
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

