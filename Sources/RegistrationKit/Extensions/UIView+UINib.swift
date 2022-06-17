//
//  UIView+UINib.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

extension UIView {
    static var nib: UINib { .init(nibName: identifier, bundle: nil) }
}
