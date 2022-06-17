//
//  UITableView+Registration.swift
//  
//
//  Created by Тарас Коцур on 18.06.2022.
//

import UIKit

// MARK: - Register methods

extension UITableView {
    
    // MARK: - Cell

    func register<Cell: UITableViewCell>(_ cell: Cell.Type) {
        register(cell, forCellReuseIdentifier: cell.identifier)
    }

    func register<Cell: UITableViewCell, UIReusable>(_ cell: Cell.Type) {
        register(cell.nib, forCellReuseIdentifier: cell.identifier)
    }
    
    // MARK: - Supplementary

    func register<SupplementaryView: UITableViewHeaderFooterView>(
        _ supplementaryView: SupplementaryView.Type
    ) {
        register(supplementaryView, forHeaderFooterViewReuseIdentifier: supplementaryView.identifier)
    }

    func register<SupplementaryView: UITableViewHeaderFooterView, UIReusable>(
        _ supplementaryView: SupplementaryView.Type
    ) {
        register(supplementaryView.nib, forHeaderFooterViewReuseIdentifier: supplementaryView.identifier)
    }
}
