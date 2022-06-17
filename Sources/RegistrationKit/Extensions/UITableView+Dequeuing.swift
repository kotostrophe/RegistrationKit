//
//  UITableView+Dequeuing.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Dequeue methods

extension UITableView {
    
    // MARK: - Cell

    func dequeue<Cell: UITableViewCell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier
    ) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: identifier) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }

    func dequeue<Cell: UITableViewCell>(
        _ cell: Cell.Type,
        with identifier: String = Cell.identifier
        for indexPath: IndexPath
    ) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? Cell
        else { fatalError("Failed to dequeue \(Cell.self)") }
        return cell
    }
    
    // MARK: - Supplementary

    func dequeue<SupplementaryView: UITableViewHeaderFooterView>(
        _ supplementaryView: SupplementaryView.Type,
        with identifier: String = Cell.identifier
    ) -> SupplementaryView {
        guard let cell = dequeueReusableHeaderFooterView( withIdentifier: identifier) as? SupplementaryView
        else { fatalError("Failed to dequeue \(SupplementaryView.self)") }
        return cell
    }
}
