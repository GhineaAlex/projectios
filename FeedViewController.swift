//
//  FeedViewController.swift
//  instagramproject
//
//  Created by alex on 03/04/2020.
//  Copyright © 2020 alex. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userEmailLabel.text = "test"
        cell.likeLabel.text = "0"
        cell.commentLabel.text = "comment"
        cell.userImageView.image = UIImage(named: "select.png")
        return cell
    }

}
