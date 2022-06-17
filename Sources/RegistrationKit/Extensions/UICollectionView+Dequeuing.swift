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

    func dequeue<Cell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier,
        for indexPath: IndexPath
    ) -> Cell where Cell: UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }
    
    // MARK: - Supplementary
    
    func dequeue<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type,
        for indexPath: IndexPath,
        as kind: UICollectionReusableView.Kind,
        with identifier: String = SupplementaryView.identifier
    ) -> SupplementaryView where SupplementaryView: UICollectionReusableView {
        dequeue(supplementaryView, for: indexPath, as: kind.name, with: identifier)
    }

    func dequeue<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type,
        for indexPath: IndexPath,
        as kind: String,
        with identifier: String = SupplementaryView.identifier
    ) -> SupplementaryView where SupplementaryView: UICollectionReusableView {
        guard let supplementaryView = dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: identifier,
            for: indexPath
        ) as? SupplementaryView
        else { fatalError("Failed to dequeue \(SupplementaryView.self)") }
        return supplementaryView
    }
}
