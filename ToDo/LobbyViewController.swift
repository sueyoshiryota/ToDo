//
//  LobbyViewController.swift
//  ToDo
//
//  Created by 末吉亮太 on 2018/09/17.
//  Copyright © 2018年 末吉亮太. All rights reserved.
//

import UIKit

class LobbyViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var titleTextField: UITextField!
    
    var saveData: UserDefaults = UserDefaults.standard
    
    var accelerationX: Double!
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(){
        
        saveData.set(titleTextField.text, forKey: "title")
        func titleTextShouldReturn(_ textField:UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
