//
//  LandingTableViewCell.swift
//  LuxsoftTableView
//
//  Created by René Sestier on 09/07/21.
//

import UIKit

class LandingTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
