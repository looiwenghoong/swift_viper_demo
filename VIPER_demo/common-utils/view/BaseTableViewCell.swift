//
//  BaseTableViewCell.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    public var indexPath: IndexPath?
    
    public func updateDisplay(object: AnyObject?, indexPath: IndexPath) {
        self.indexPath = indexPath
    }
}
