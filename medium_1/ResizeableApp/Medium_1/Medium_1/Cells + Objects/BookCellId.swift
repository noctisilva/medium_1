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
    var bookImage: UIImageView = {
       let imageView = UIImageView()
       imageView.translatesAutoresizingMaskIntoConstraints = false
       imageView.contentMode = .scaleAspectFill
       imageView.clipsToBounds = true
       imageView.layer.masksToBounds = true
       return imageView
    }()
    var bookDescription: UITextView = {
       let textView = UITextView()
       textView.translatesAutoresizingMaskIntoConstraints = false
       textView.setContentCompressionResistancePriority(.required, for: .vertical)
       textView.isEditable = false
       textView.isScrollEnabled = false
       textView.textContainerInset = .zero
       return textView
    }()
    
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
        contentView.addSubview(bookImage)
        let margins = contentView.layoutMarginsGuide
        NSLayoutConstraint.activate([
           bookImage.widthAnchor.constraint(equalToConstant: imageSize.width),
           bookImage.heightAnchor.constraint(equalToConstant: imageSize.height),
           bookImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
           bookImage.topAnchor.constraint(equalTo: margins.topAnchor),
           bookImage.bottomAnchor.constraint(lessThanOrEqualTo: margins.bottomAnchor)
        ])
        contentView.addSubview(bookDescription)
        NSLayoutConstraint.activate([
           bookDescription.leadingAnchor.constraint(equalTo: bookImage.trailingAnchor, constant: spaceBetweenImageAndText),
           bookDescription.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
           bookDescription.topAnchor.constraint(equalTo: margins.topAnchor),
           bookDescription.bottomAnchor.constraint(equalTo:  margins.bottomAnchor)
        ])
    }
    
    
}
