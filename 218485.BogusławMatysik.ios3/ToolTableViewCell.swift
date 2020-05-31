//
//  ToolTableViewCell.swift
//  218485.BogusławMatysik.ios3
//
//  Created by Bogusław Matysik on 31/05/2020.
//  Copyright © 2020 Bogusław Matysik. All rights reserved.
//

import UIKit

class ToolTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
