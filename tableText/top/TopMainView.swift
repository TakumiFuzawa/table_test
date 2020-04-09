//
//  TopMainView.swift
//  tableText
//
//  Created by Takumi Fuzawa on 2020/04/09.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    @IBOutlet var tableView: UITableView!
    weak var delegate: TopMainViewDelegate? = nil
}

// MARK: - Life cycle
extension TopMainView {
    
}

// MARK: - Protocol
extension TopMainView {
    
}

// MARK: - method
extension TopMainView {
    
}
