//
//  UICollectionView+Registration.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Register methods

extension UICollectionView {
    
    // MARK: - Cell
    
    func register<Cell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier
    ) where Cell: UICollectionViewCell {
        register(cell, forCellWithReuseIdentifier: identifier)
    }
    
    func register<Cell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier
    ) where Cell: UICollectionViewCell, Cell: UIReusable {
        register(cell.nib, forCellWithReuseIdentifier: identifier)
    }
    
    func register<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: UICollectionReusableView.Kind,
        with identifier: String = SupplementaryView.identifier
    ) where SupplementaryView: UICollectionReusableView {
        register(supplementaryView, as: kind.name, with: identifier)
    }
    
    // MARK: - Supplementary

    func register<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: String,
        with identifier: String = SupplementaryView.identifier
    ) where SupplementaryView: UICollectionReusableView {
        register(
            supplementaryView,
            forSupplementaryViewOfKind: kind,
            withReuseIdentifier: identifier
        )
    }
    
    func register<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: UICollectionReusableView.Kind,
        with identifier: String = SupplementaryView.identifier
    ) where SupplementaryView: UICollectionReusableView, SupplementaryView: UIReusable {
        register(supplementaryView, as: kind.name, with: identifier)
    }

    func register<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: String,
        with identifier: String = SupplementaryView.identifier
    ) where SupplementaryView: UICollectionReusableView, SupplementaryView: UIReusable {
        register(
            supplementaryView.nib,
            forSupplementaryViewOfKind: kind,
            withReuseIdentifier: identifier
        )
    }
}
