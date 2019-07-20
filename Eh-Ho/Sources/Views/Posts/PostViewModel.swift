//
//  PostViewModel.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 20/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import Foundation

class PostViewModel {
    
    weak var  view: PostsViewControllerProtocol?
    let router: PostRouter
    let id: Int
    let postsRepository: PostsRepository
    
    init(router: PostRouter, id: Int, postsRepository: PostsRepository) {
        self.router = router
        self.id = id
        self.postsRepository = postsRepository
    }
    
    func viewDidLoad() {
        fetchListPostssByTopic()
    }
    
    
   private func fetchListPostssByTopic () {
    postsRepository.getListPostssByTopic(id: id) { [weak self] result in
        switch result {
        case .success(let value):
            //self?.view?.showListTopicsByCategory(topics: value.topicList.topics)
            self?.view?.showListPostssByTopic(posts: value.postStream.posts)
            print("llega el valor")
        case .failure:
            self?.view?.showError(with: "Error")
        }
    }
    }
    
}
