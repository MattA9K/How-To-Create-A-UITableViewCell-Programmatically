//
//  CustomTableViewCell.swift
//  ProgrammaticTableViewCell
//
//  Created by Matt Andrzejczuk on 3/8/17.
//  Copyright © 2017 Matt Andrzejczuk. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    var row1Item: UILabel!
    var row2Item: UILabel!
    var row3Item: UILabel!
    var row4Item: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initializeLabels()
    }
    
    func initializeLabels() {
        
        let cellFrame: CGRect! = self.contentView.frame
        let height = cellFrame.height
        let partialWidth = cellFrame.width / 2
        let centerY = cellFrame.height / 2
        
        let f1 = CGRect(x: 0, y: 0, width: partialWidth, height: height)
        let f2 = CGRect(x: partialWidth, y: 0, width: partialWidth, height: height)
        let f3 = CGRect(x: partialWidth * 2, y: 0, width: partialWidth, height: height)
        let f4 = CGRect(x: partialWidth * 3, y: 0, width: partialWidth, height: height)
        
        row1Item = UILabel(frame: f1)
        row2Item = UILabel(frame: f2)
        row3Item = UILabel(frame: f3)
        row4Item = UILabel(frame: f4)
        
        let allItems = [row1Item, row2Item, row3Item, row4Item]
        
        for item in allItems {
            self.contentView.addSubview(item!)
        }
        
        // OPTIONAL CUSTOM FONT:
        for item in allItems {
            item!.font = UIFont(name: "AvenirNext-UltraLight", size: 13)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
