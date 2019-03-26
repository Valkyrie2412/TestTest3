//
//  CheckInt.swift
//  TestTest3
//
//  Created by Hiếu Nguyễn on 3/22/19.
//  Copyright © 2019 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class CheckInt: UIViewController {

    @IBOutlet weak var timeRetrieved: UITextField!
    
    var convertedNumber: Int? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkInt(_ sender: Any) {
        let possibleNumber = timeRetrieved.text ?? ""
        convertedNumber = Int(possibleNumber)
        
        if convertedNumber != nil {
            
            
            print("It's a number!")
            
        } else {
            timeRetrieved.text = ""
            let alertController = UIAlertController(title: "Error", message: "You must enter number!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: {(alert : UIAlertAction!) in
                alertController.dismiss(animated: true, completion: nil)
            })
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }

    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
