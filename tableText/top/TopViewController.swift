//
//  TopViewController.swift
//  tableText
//
//  Created by Takumi Fuzawa on 2020/04/09.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class TopViewController: BaseViewController {
    
    @IBOutlet var topMainView: TopMainView!
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        topMainView.delegate = self
    }
}

// MARK: - Protocol
extension TopViewController: TopMainViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tableView tapped")
    }
}

// MARK: - method
extension TopViewController {
    
}

