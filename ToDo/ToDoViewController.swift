//
//  ToDoViewController.swift
//  ToDo
//
//  Created by 末吉亮太 on 2018/09/17.
//  Copyright © 2018年 末吉亮太. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate{

   var saveData: UserDefaults = UserDefaults.standard
    var savedataArray = [String]()
    
    var todoX: Double!
    
    @IBOutlet var table: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        savedataArray = []
        
       var saveData: UserDefaults = UserDefaults.standard
        
        let result: Double = fabs(todoX)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = savedataArray[indexPath.row]
        return cell!
        
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


