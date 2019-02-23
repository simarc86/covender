//
//  ProdcutTableViewCell.swift
//  covender
//
//  Created by Developers on 23/02/2019.
//  Copyright © 2019 Marc Tamarit. All rights reserved.
//

import UIKit

class ProdcutTableViewCell: UITableViewCell {
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
