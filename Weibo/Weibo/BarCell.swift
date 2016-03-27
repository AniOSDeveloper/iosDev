//
//  BarCell.swift
//  Weibo
//
//  Created by Ant on 3/27/16.
//  Copyright © 2016 Ant. All rights reserved.
//

import UIKit

class BarCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var redCircle: RoundImage!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.separatorInset = UIEdgeInsetsZero
        self.layoutMargins = UIEdgeInsetsZero
        
    }
    
    func initCell(image: UIImage, title: String, subtitle: String, new: Bool) {
        self.img.image = image
        self.title.text = title
        self.title.frame.size.width = self.title.frame.size.width / 2
        self.subtitle.text = subtitle
        
        self.redCircle.hidden = !new
    }

}
