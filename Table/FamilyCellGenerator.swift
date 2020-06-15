//
//  FamilyCellGenerator.swift
//  Table
//
//  Created by Denis on 11.06.2020.
//  Copyright © 2020 Denys Vytryshko. All rights reserved.
//

import Foundation
import UIKit
import ReactiveDataDisplayManager

final class FamilyCellGenerator {
 
    private var cell: FamilyTableViewCell?
    private var family: Family?
 
//    var didTapPerson: ((Person) -> Void)?
 
    func show(family: Family) {
        self.family = family
        cell?.fill(with: family)
    }
 
    func showLoading() {
        self.family = nil
        cell?.showLoading()
    }
}
 
extension FamilyCellGenerator: TableCellGenerator {
    var cellHeight: CGFloat {
        return 10
    }
    
    var estimatedCellHeight: CGFloat? {
        return 10
    }
    
 
    
    var identifier: UITableViewCell.Type {
        return FamilyTableViewCell.self
    }
}
 
extension FamilyCellGenerator: ViewBuilder {
    func build(view: FamilyTableViewCell) {
        self.cell = view
        view.selectionStyle = .none
//        view.didTapPerson = { [weak self] person in
//            self?.didTapPerson?(person)
//        }
        if let family = self.family {
            view.fill(with: family)
        } else {
            view.showLoading()
        }
    }
    
    func registerCell(in tableView: UITableView) {
        tableView.register(identifier, forCellReuseIdentifier: String(describing: identifier))
    }
}
