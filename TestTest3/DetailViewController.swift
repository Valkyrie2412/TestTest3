//
//  DetailViewController.swift
//  TestTest3
//
//  Created by Hiếu Nguyễn on 8/29/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var proButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Images
    let checkedBox = UIImage(named: "Image")
    let uncheckBox = UIImage(named: "white")
    
    // Bool property
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
                proButton.setImage(uncheckBox, for: UIControlState.normal)
                proButton.setBackgroundImage(UIImage(named: "white"), for: UIControlState.normal)
            } else {
                proButton.setImage(checkedBox, for: UIControlState.normal)
                proButton.setBackgroundImage(UIImage(named: "white"), for: UIControlState.normal)
            }
        }
    }
    @IBAction func actionPro(_ sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
    //
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
