//
//  CustomTableViewCell.swift
//  Makna
//
//  Created by Waldi Febrianda on 10/11/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var materiView: UIView!
    @IBOutlet weak var materiLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var judulLabel: UILabel!
    @IBOutlet weak var materilabel1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
