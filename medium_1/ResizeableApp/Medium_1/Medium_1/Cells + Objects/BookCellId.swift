//
//  BookCell.swift
//  Medium_1
//
//  Created by Tae Hong Min on 6/19/20.
//  Copyright © 2020 tableview.practice.com. All rights reserved.
//

import Foundation
import UIKit
class BookCellId: UITableViewCell {
    let spaceBetweenImageAndText:CGFloat = 10
    let imageSize = CGSize(width: 120.0, height: 90.0) //not used due to autolayout
    let cellMargins = UIEdgeInsets(top: 10.0, left: 20.0, bottom: 10.0, right: -20.0)
    let systemFontSize: CGFloat = 12.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.layoutMargins = cellMargins
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
    }
    
    
}
