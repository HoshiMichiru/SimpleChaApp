//
//  ViewController.swift
//  SimpleChatApp
//
//  Created by 星みちる on 2019/08/08.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noomName: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    //チャットの部屋一覧を保持する配列
    var rooms:[Room] = []{
        
        //roomsが書き換わった時はdidset
        didSet{
        //tableViewを更新
            tableView.reloadData()
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func didClickButton(_ sender: UIButton) {
        
        
    }
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        //roomsの中のroomを一件取りたい時に書く
        let room = rooms[indexPath.row]
        
        cell.textLabel?.text = room.name
        
        //右矢印設定
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
    
    
}
