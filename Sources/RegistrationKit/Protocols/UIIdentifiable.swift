//
//  UIIdentifiable.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

public protocol UIIdentifiable where Self: UIResponder {
    static var identifier: String { get }
}

public extension UIIdentifiable {
    static var identifier: String {
        let className = String(describing: self)
        guard className.contains("<") else { return className }
        return className.components(separatedBy: "<").first ?? className
    }
}
