//
//  RBTitle.swift
//  Roll Back
//
//  Created by Bjørn Lindholm on 28/05/2019.
//  Copyright © 2019 Bjørn Lindholm. All rights reserved.
//

import UIKit


enum TitleItemType {
    case regular
    case bold
    case extraBold
}

struct TitleItem {
    var index: Int
    var type: TitleItemType
    var text: String
}

class RBTitle: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - Public
    
    func setTitle(items: [TitleItem]) {
        attributedText = generateTitle(items: items)
    }
    
    // MARK: - Private
    
    private func setup() {
        textAlignment = NSTextAlignment.center
        textColor = Colors.blue900
        lineBreakMode = NSLineBreakMode.byWordWrapping
        numberOfLines = 2
    }
    

    private func generateTitle(items: [TitleItem]) -> NSMutableAttributedString {
        let title = NSMutableAttributedString()

        for item in items {
            title.append(NSAttributedString(string: item.text, attributes: getTypeAttributes(type: item.type) ))
        }

        return title
    }

    private func getTypeAttributes(type: TitleItemType) -> [NSAttributedString.Key : Any]? {
        let boldAttributes = [
            NSAttributedString.Key.font: UIFont(name: Fonts.Primary.ExtraBold, size: 32)!
        ]
        let regularAttributes = [
            NSAttributedString.Key.font: UIFont(name: Fonts.Primary.Regular, size: 32)!
        ]

        switch type {
        case TitleItemType.regular:
            return regularAttributes
        case TitleItemType.bold:
            return boldAttributes
        default:
            return regularAttributes
        }
    }
}

