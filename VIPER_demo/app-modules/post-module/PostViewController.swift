//
//  ViewController.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var postList: [String] = ["jakhdlkaj lsj jsaldjlkaj ldjalskjd lsajdlk jaslkjd", "Coepi aeternus acerbitas socius sequi autem contabesco conservo auxilium statua capillus votum suscipit admitto spero sint audentia.","Thesis aperte denuo. Thesis cilicium delectatio. Sed eos ut. Maiores quibusdam considero. Desparatus dolores dolore. Deporto curriculum adflicto. Venustas voluptatem utroque. Tricesimus sperno vaco"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "PostTableViewCell", bundle: nil), forCellReuseIdentifier: "PostTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension PostViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath)
        
        if let c = cell as? PostTableViewCell {
            c.updateDisplay(object: postList as AnyObject, indexPath: indexPath)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

