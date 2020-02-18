//
//  TableViewCell.swift
//  tableViewImage
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label2Cell: UILabel!
    @IBOutlet weak var label1Cell: UILabel!
    @IBOutlet weak var ImageCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
