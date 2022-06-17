//
//  UITableView+Registration.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Register methods

public extension UITableView {
    
    // MARK: - Cell

    func register<Cell>(
        _ cell: Cell.Type
    ) where Cell: UITableViewCell {
        register(cell, forCellReuseIdentifier: cell.identifier)
    }

    func register<Cell>(
        _ cell: Cell.Type
    ) where Cell: UITableViewCell, Cell: UIReusable {
        register(cell.nib, forCellReuseIdentifier: cell.identifier)
    }
    
    // MARK: - Supplementary

    func register<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type
    ) where SupplementaryView: UITableViewHeaderFooterView {
        register(supplementaryView, forHeaderFooterViewReuseIdentifier: supplementaryView.identifier)
    }

    func register<SupplementaryView>(
        _ supplementaryView: SupplementaryView.Type
    ) where SupplementaryView: UITableViewHeaderFooterView, SupplementaryView: UIReusable {
        register(supplementaryView.nib, forHeaderFooterViewReuseIdentifier: supplementaryView.identifier)
    }
}
