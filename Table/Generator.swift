//
//  Generator.swift
//  Table
//
//  Created by Denis on 11.06.2020.
//  Copyright © 2020 Denys Vytryshko. All rights reserved.
//

import Foundation
import UIKit

public protocol TableCellGenerator: class {
 
    var identifier: UITableViewCell.Type { get }
    var cellHeight: CGFloat { get }
    var estimatedCellHeight: CGFloat? { get }
 
    func generate(tableView: UITableView, for indexPath: IndexPath) -> UITableViewCell
    func registerCell(in tableView: UITableView)
}
 
public protocol ViewBuilder {
 
    associatedtype ViewType: UIView
 
    func build(view: ViewType)
}

class Generator {
    
}

public extension TableCellGenerator where Self: ViewBuilder {
 
    func generate(tableView: UITableView, for indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.identifier.nameOfClass, for: indexPath) as? Self.ViewType else {
            return UITableViewCell()
        }
 
        self.build(view: cell)
 
        return cell as? UITableViewCell ?? UITableViewCell()
    }
 
    func registerCell(in tableView: UITableView) {
        tableView.registerNib(self.identifier)
    }
    
    
}
