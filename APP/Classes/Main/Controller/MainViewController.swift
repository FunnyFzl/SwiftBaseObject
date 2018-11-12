//
//  MainViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = UIDevice.appName()

        if #available(iOS 12.0, *) {
            print(2222)
        } else {
            // Fallback on earlier versions
        }

        setupUI()
    }

    override func setupUI() {

        view.addSubview(tableView)
    }


    let tableView: MainTableView = {

        let tableView: MainTableView = MainTableView.init(frame: CGRect.init(x: 0, y: 0, width: UIDevice.width, height: UIDevice.height), style: .plain)
        tableView.backgroundColor = UIColor.white
        
        return tableView
    }()

}
