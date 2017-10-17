//
//  ItemTypeViewCell.swift
//  Money Pack Pro
//
//  Created by itthipon wiwatthanasathit on 10/13/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import UIKit
import APAvatarImageView

class ItemTypeViewCell: UITableViewCell {
 
  @IBOutlet weak var mTypeImage: UIButton!
  @IBOutlet weak var mCorrectImage: UIButton!
  @IBOutlet weak var mTypeNameLabel: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    mTypeImage.layer.cornerRadius = mTypeImage.frame.height / 2
    mTypeImage.layer.masksToBounds = true
    mCorrectImage.layer.cornerRadius = mTypeImage.frame.height / 2
    mCorrectImage.layer.masksToBounds = true
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
