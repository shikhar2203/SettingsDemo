//
//  ViewController.swift
//  SettingsDemo
//
//  Created by shikhar on 02/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTable: UITableView!
    
    var options = ["VPN", "Screen Time", "General", "Accessibility", "Privacy & Security", "Passwords", "Safari", "News", "Maps", "Shortcuts", "Siri & Search", "Photos", "Developer"]
    
    var image = ["pic1", "pic2", "pic3", "pic4", "pic5", "pic6", "pic7", "pic8", "pic9", "pic10", "pic11", "pic12", "pic13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.delegate = self
        myTable.dataSource = self
        
        myTable.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "customcell")
        myTable.register(UINib(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: "headercell")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! CustomCell
        cell.settingOptionImage.image = UIImage(named: image[indexPath.row])
        cell.settingName.text = options[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(options[indexPath.row]) is Pressed.")
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = myTable.dequeueReusableCell(withIdentifier: "headercell") as! HeaderCell
        headerCell.tableTitle.text = "Settings"
        return headerCell
    }

    

}

