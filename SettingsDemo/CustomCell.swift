//
//  CustomCell.swift
//  SettingsDemo
//
//  Created by shikhar on 02/09/23.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var settingOptionImage: UIImageView!
    @IBOutlet weak var settingName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
