//
//  ViewController.swift
//  Table
//
//  Created by Denis on 02.06.2020.
//  Copyright © 2020 Denys Vytryshko. All rights reserved.
//

import UIKit
import ReactiveDataDisplayManager

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataDisplayManager: BaseTableDataDisplayManager!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.dataDisplayManager = BaseTableDataDisplayManager.init(collection: tableView)
//        let gen = FamilyCellGenerator()
        
        let familyModel = Family()
        let gen = FamilyCellGenerator.init()
        gen.build(view: FamilyTableViewCell())
        gen.show(family: familyModel)
        gen.registerCell(in: tableView)
        
        
        
        
    }

}

