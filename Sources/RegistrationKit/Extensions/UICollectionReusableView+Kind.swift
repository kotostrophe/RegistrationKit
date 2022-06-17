//
//  UICollectionReusableView+Kind.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

typealias UICollectionViewReusableCell = UICollectionViewCell & UIReusable

extension UICollectionReusableView {
    enum Kind {
        case header, footer, custom(String)

        init(_ value: String) {
            switch value {
            case Kind.header.name: self = .header
            case Kind.footer.name: self = .footer
            default: self = .custom(value)
            }
        }

        var name: String {
            switch self {
            case .header: return UICollectionView.elementKindSectionHeader
            case .footer: return UICollectionView.elementKindSectionFooter
            case .custom(let value): return value
            }
        }
    }
}
