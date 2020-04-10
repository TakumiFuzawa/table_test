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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    
    weak var delegate: TopMainViewDelegate? = nil
    
    var lableNum: [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var todo: [String] = ["読書をする","筋トレをする","プログラミングの勉強","Netflixを視聴","英語の勉強","自粛する","早寝早起き","バイトに行く","ゲームする","ワインを飲む"]
    
    @IBOutlet var tableView: UITableView!
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.delegate = self
        tableView.dataSource = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainViewCell")
    }
}

// MARK: - Protocol
extension TopMainView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TopMainViewCell", for: indexPath) as? TopMainViewCell else {
            return UITableViewCell()
        }
        cell.messageLabel.text = todo[indexPath.row]
        cell.label.text = lableNum[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.tableView(tableView, didSelectRowAt: indexPath)
    }
}

// MARK: - method
extension TopMainView {
    
}
