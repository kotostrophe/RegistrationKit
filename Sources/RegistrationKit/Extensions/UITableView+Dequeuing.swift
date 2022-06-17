//
//  UITableView+Dequeuing.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Dequeue methods

extension UITableView {

    func dequeueCell<Cell: UITableViewCell>(_ cell: Cell.Type) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: cell.identifier) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }

    func dequeueCell<Cell: UITableViewCell>(_ cell: Cell.Type, for indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: cell.identifier, for: indexPath) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }

    func dequeueSupplementary<SupplementaryView: UITableViewHeaderFooterView>(
        _ supplementaryView: SupplementaryView.Type
    ) -> SupplementaryView {
        guard let cell = dequeueReusableHeaderFooterView(
            withIdentifier: supplementaryView.identifier
        ) as? SupplementaryView
        else { fatalError("Failed to dequeue \(SupplementaryView.self)") }
        return cell
    }
}
