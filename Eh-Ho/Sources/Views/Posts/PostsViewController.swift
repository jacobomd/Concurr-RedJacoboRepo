//
//  PostsViewController.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 20/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController {

    @IBOutlet weak var tableViewPosts: UITableView!
    
    
    var posts : [Post2] = []
    
    let viewModel : PostViewModel
    
    var id: Int = 0
    
    
    init(viewModel : PostViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPosts.dataSource = self
        tableViewPosts.delegate = self
        tableViewPosts.rowHeight = 60
        self.title = "Posts"
        
        tableViewPosts.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.identifier)
        
        viewModel.viewDidLoad()

    }
    
    @IBAction func ButtonAddPost(_ sender: Any) {
        
        viewModel.didTapInTopic(id: self.id)
        print("El id del topic es: \(id)")
    }

}

extension PostsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewPosts.dequeueReusableCell(withIdentifier: UITableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = posts[indexPath.row].cooked
        
        id = posts[indexPath.row].topicID
//        viewModel.didTapInTopic(id: id)
        
        
        
        return cell
    }
    
}


extension PostsViewController: UITableViewDelegate {
    
}

// MARK: - ViewModel Communication

protocol PostsViewControllerProtocol: class {
    func showListPostssByTopic(posts: [Post2])
    func showError(with message: String)
}

extension PostsViewController: PostsViewControllerProtocol {
    func showListPostssByTopic(posts: [Post2]) {
        self.posts = posts
        self.tableViewPosts.reloadData()
    }
    
    func showError(with message: String) {
        //AQUI ENSEÑAMOS ALERTA
        print("ERROR")
    }
}
