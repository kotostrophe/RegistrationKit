//
//  UICollectionView+Dequeuing.swift
//
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Dequeue methods

extension UICollectionView {

    func dequeueCell<Cell: UICollectionViewCell>(_ cell: Cell.Type, for indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cell.identifier, for: indexPath) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }

    func dequeueSupplementary<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        for indexPath: IndexPath,
        as kind: UICollectionReusableView.Kind
    ) -> SupplementaryView {
        dequeueSupplementary(supplementaryView, for: indexPath, as: kind.name)
    }

    func dequeueSupplementary<SupplementaryView: UICollectionReusableView>(
        _ supplementaryView: SupplementaryView.Type,
        for indexPath: IndexPath,
        as kind: String
    ) -> SupplementaryView {
        guard let supplementaryView = dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: supplementaryView.identifier,
            for: indexPath
        ) as? SupplementaryView
        else { fatalError("Failed to dequeue \(SupplementaryView.self)") }
        return supplementaryView
    }
}
