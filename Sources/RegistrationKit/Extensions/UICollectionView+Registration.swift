//
//  UICollectionView+Registration.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

#if canImport(UIKit)
import UIKit

// MARK: - Register methods

extension UICollectionView {
    
    func registerSupplementary<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: UICollectionReusableView.Kind
    ) {
        registerSupplementary(supplementaryView, as: kind.name)
    }

    func registerSupplementary<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: String
    ) {
        register(
            supplementaryView,
            forSupplementaryViewOfKind: kind,
            withReuseIdentifier: supplementaryView.identifier
        )
    }

    func registerSupplementary<SupplementaryView: UICollectionReusableView & UIReusable>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: UICollectionReusableView.Kind
    ) {
        registerSupplementary(supplementaryView, as: kind.name)
    }

    func registerSupplementary<SupplementaryView: UICollectionReusableView & UIReusable>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: String
    ) {
        register(
            supplementaryView.nib,
            forSupplementaryViewOfKind: kind,
            withReuseIdentifier: supplementaryView.identifier
        )
    }
}

#endif
