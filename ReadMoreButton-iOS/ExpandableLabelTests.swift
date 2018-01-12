//
//  ExpandableLabelTests.swift
//  IODModels
//
//  Created by Keshav Tiwari on 29/12/17.
//  Copyright © 2017 Keshav Tiwari. All rights reserved.
//

import UIKit

class ExpandableLabelTests: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var ExpandableLabelTableView: UITableView!
    
    var cell = ExpandableLabelTestCell()
    let obj = ExpandableLabel()
    
    var dataArray = ["This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,","This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,","This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,","This is a test data,This is a test data,This is a test data,"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerNib()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerNib(){
        
        let nib = UINib(nibName: "ExpandableLabelTestCell", bundle: nil)
        self.ExpandableLabelTableView.register(nib, forCellReuseIdentifier:"ExpandableLabelTestCell")

        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cell = tableView.dequeueReusableCell(withIdentifier: "ExpandableLabelTestCell", for: indexPath) as! ExpandableLabelTestCell
        
        let data = dataArray[indexPath.row]
        
        cell.configure(data: data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }

}
