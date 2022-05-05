//
//  TableViewController.swift
//  NearbyMessagesTrial
//
//  Created by Dan Hoffstein on 2022-05-05.
//

import UIKit

class TableViewController: UITableViewController {
    
    let data = Array(repeating: "Item", count: 5)
    let name = "Nick"
    
    let messageManager = GNSMessageManager(apiKey: "AIzaSyDd5FhSEaqKx-Oadx3xk7B8ywbKfmtywTc")

    @IBOutlet var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let publication =
            messageManager?.publication(with: GNSMessage(content: name.data(using: .utf8)))
        //print(publication)
        
        print(data)
        
        
        
        mainTableView.dataSource = self
        mainTableView.register(UINib(nibName: "tableCell", bundle: nil), forCellReuseIdentifier: "ReusabelCell")
        self.mainTableView.reloadData()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusabelCell", for: indexPath)
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }



}
