//
//  HeaderCell.swift
//  SettingsDemo
//
//  Created by shikhar on 02/09/23.
//

import UIKit

class HeaderCell: UITableViewCell {

    
    @IBOutlet weak var tableTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
