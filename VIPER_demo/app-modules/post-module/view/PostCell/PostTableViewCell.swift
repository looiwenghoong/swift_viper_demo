//
//  PostTableViewCell.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import UIKit

class PostTableViewCell: BaseTableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func updateDisplay(object: AnyObject?, indexPath: IndexPath) {
        super.updateDisplay(object: object, indexPath: indexPath)
        
        if let post = object as? [PostModel] {
            titleLabel.text = post[indexPath.row].title
            descriptionLabel.text = post[indexPath.row].body
        }
    }
    
}
