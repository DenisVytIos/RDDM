//
//  FamilyTableViewCell.swift
//  Table
//
//  Created by Denis on 11.06.2020.
//  Copyright © 2020 Denys Vytryshko. All rights reserved.
//

import UIKit

class FamilyTableViewCell: UITableViewCell {
    
//    var didTapPerson: UITableViewCell!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fill(with: Family){
       guard let mom = with.mom else { return }

        self.nameTextField.text = mom
    }
    
    func showLoading() {
        
    }
    
}
