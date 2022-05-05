//
//  tableCell.swift
//  NearbyMessagesTrial
//
//  Created by Dan Hoffstein on 2022-05-05.
//

import UIKit

class TableCell: UITableViewCell {


    @IBOutlet weak var cellBG: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBG.layer.cornerRadius = cellBG.frame.size.height/5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
