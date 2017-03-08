//
//  ViewController.swift
//  ProgrammaticTableViewCell
//
//  Created by Matt Andrzejczuk on 3/7/17.
//  Copyright © 2017 Matt Andrzejczuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableViewMain : UITableView!
    let tvitems: [String] = ["We msdjngtkj sdrgkjhskdjh", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func initializeTableView() {
        let rect = CGRect(x: 100, y: 100, width: 700, height: 400)
        self.tableViewMain = UITableView(frame: rect)
        self.tableViewMain.register(CustomTableViewCell.self, forCellReuseIdentifier: "cellThing");
        self.tableViewMain.delegate = self
        self.tableViewMain.dataSource = self
        self.view.addSubview(tableViewMain)
        self.tableViewMain.reloadData()
    }
    
    // UITableView Delegate & DataSource Methods:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableViewMain.dequeueReusableCell(withIdentifier: "cellThing") as! CustomTableViewCell
        cell.row1Item.text = tvitems[indexPath.row];
        cell.row2Item.text = "number";
        cell.row3Item.text = "some";
        cell.row4Item.text = "more text";
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvitems.count;
    }
}

