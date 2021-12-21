//
//  Extensions.swift
//  hw2-eghnacr
//
//  Created by Egehan Acar on 21.12.2021.
//

import Foundation
import UIKit

extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }
}
