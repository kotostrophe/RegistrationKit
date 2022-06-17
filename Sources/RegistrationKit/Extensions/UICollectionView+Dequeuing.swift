//
//  UICollectionView+Dequeuing.swift
//
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Dequeue methods

extension UICollectionView {
    
    // MARK: - Cell

    func dequeue<Cell: UICollectionViewCell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier,
        for indexPath: IndexPath
    ) -> Cell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }
    
    // MARK: - Supplementary
    
    func dequeue<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        for indexPath: IndexPath,
        as kind: UICollectionReusableView.Kind,
        with identifier: String = SupplementaryView.identifier
    ) -> SupplementaryView {
        dequeue(supplementaryView, for: indexPath, as: kind.name, with: identifier)
    }

    func dequeue<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        for indexPath: IndexPath,
        as kind: String,
        with identifier: String = SupplementaryView.identifier
    ) -> SupplementaryView {
        guard let supplementaryView = dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: identifier,
            for: indexPath
        ) as? SupplementaryView
        else { fatalError("Failed to dequeue \(SupplementaryView.self)") }
        return supplementaryView
    }
}
