//
//  ViewController.swift
//  TBVC
//
//  Created by Reshmi on 18/01/18.
//  Copyright © 2018 Reshmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    var arr = ["arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd","arr1","arr2","asd"]
     @IBOutlet var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
         // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TBLVCCell
        cell.lblLabel?.text = "\(arr[indexPath.row])"
 
        return cell
    }

 

}

 
