//
//  ViewController.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import UIKit

class PostViewController: UIViewController {

    var presenter: ViewToPresentorPostProtocol?
    var postList: [PostModel] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PostRouter().createPostModule(controller: self)
        presenter?.fetchPost()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "PostTableViewCell", bundle: nil), forCellReuseIdentifier: "PostTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension PostViewController: PresentorToViewPostProtocol {
    func onPostResponseSuccess(postList: [PostModel]?) {
        // response success
        if let data = postList {
            self.postList = data
            self.tableView.reloadData()
        }

    }
    
    func onPostResponseFailure() {
        // response failed
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

