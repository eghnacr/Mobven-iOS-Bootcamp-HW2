//
//  BackgroundDelegate.swift
//  hw2-eghnacr
//
//  Created by Egehan Acar on 21.12.2021.
//

import Foundation
import UIKit

protocol BackgroundDelegate: AnyObject {
    func doBackground(_ handler: (UIView) -> Void)
}
