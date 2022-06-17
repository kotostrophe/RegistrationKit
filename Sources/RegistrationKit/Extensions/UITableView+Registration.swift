//
//  UITableView+Registration.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

#if canImport(UIKit)
import UIKit

// MARK: - Register methods

extension UITableView {

    func registerCell<Cell: UITableViewCell>(_ cell: Cell.Type) {
        register(cell, forCellReuseIdentifier: cell.identifier)
    }

    func registerCell<Cell: UITableViewCell & UIReusable>(_ cell: Cell.Type) {
        register(cell.nib, forCellReuseIdentifier: cell.identifier)
    }

    func registerSupplementary<SupplementaryView: UITableViewHeaderFooterView>(
        _ supplementaryView: SupplementaryView.Type
    ) {
        register(supplementaryView, forHeaderFooterViewReuseIdentifier: supplementaryView.identifier)
    }

    func registerSupplementary<SupplementaryView: UITableViewHeaderFooterView & UIReusable>(
        _ supplementaryView: SupplementaryView.Type
    ) {
        register(supplementaryView.nib, forHeaderFooterViewReuseIdentifier: supplementaryView.identifier)
    }
}

#endif
