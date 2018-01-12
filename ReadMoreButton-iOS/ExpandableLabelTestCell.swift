//
//  ExpandableLabelTestCell.swift
//  IODModels
//
//  Created by Keshav Tiwari on 29/12/17.
//  Copyright © 2017 Keshav Tiwari. All rights reserved.
//

import UIKit

class ExpandableLabelTestCell: UITableViewCell {

    @IBOutlet weak var testLabel: ExpandableLabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(data: String){
        
        testLabel.text = data
        
    }
    
}
