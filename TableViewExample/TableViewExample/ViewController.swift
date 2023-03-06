//
//  ViewController.swift
//  TableViewExample
//
//  Created by 김시훈 on 2023/03/04.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        datalist.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        datalist[section].sectionTitle
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datalist[section].returnDetail().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        
        cell.titleLabel.text = datalist[indexPath.section].title[indexPath.row]
        cell.descriptionLabel.text = datalist[indexPath.section].returnDetail()[indexPath.row]
        
        return cell
    }
}
