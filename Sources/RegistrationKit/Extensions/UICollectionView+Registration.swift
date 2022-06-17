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
    
    func register<Cell: UICollectionViewCell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier
    ) {
        register(cell, forCellWithReuseIdentifier: identifier)
    }
    
    func register<Cell: UICollectionViewCell, UIReusable>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier
    ) {
        register(cell.nib, forCellWithReuseIdentifier: identifier)
    }
    
    func register<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: UICollectionReusableView.Kind,
        with identifier: String = SupplementaryView.identifier
    ) {
        register(supplementaryView, as: kind.name, with: identifier)
    }
    
    // MARK: - Supplementary

    func register<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: String,
        with identifier: String = SupplementaryView.identifier
    ) {
        register(
            supplementaryView,
            forSupplementaryViewOfKind: kind,
            withReuseIdentifier: identifier
        )
    }
    
    func register<SupplementaryView: UICollectionReusableView, UIReusable>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: UICollectionReusableView.Kind,
        with identifier: String = SupplementaryView.identifier
    ) {
        register(supplementaryView, as: kind.name, with: identifier)
    }

    func register<SupplementaryView: UICollectionReusableView, UIReusable>(
        _ supplementaryView: SupplementaryView.Type,
        as kind: String,
        with identifier: String = SupplementaryView.identifier
    ) {
        register(
            supplementaryView.nib,
            forSupplementaryViewOfKind: kind,
            withReuseIdentifier: identifier
        )
    }
}
