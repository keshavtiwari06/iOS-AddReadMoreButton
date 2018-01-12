//
//  ViewController.swift
//  ReadMoreButton-iOS
//
//  Created by Keshav Tiwari on 12/01/18.
//  Copyright © 2018 Keshav Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var demoTextLabel: ExpandableLabel!
    
    @IBOutlet weak var demoTextLabel2: ExpandableLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        demoTextLabel.text = "This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,This is a test data,"

        demoTextLabel2.text = "This is a test data,This is a test data,This is a test data,"
    }

    @IBAction func goToTableViewBtnPressed(_ sender: UIButton) {
        
        let obj = ExpandableLabelTests()
        self.navigationController?.pushViewController(obj, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
