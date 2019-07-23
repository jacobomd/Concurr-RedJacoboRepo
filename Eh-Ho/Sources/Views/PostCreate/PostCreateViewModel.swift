//
//  PostCreateViewModel.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 22/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import Foundation

class PostCreateViewModel {
    
   weak var  view: PostCreateViewControllerProtocol?
    let router: PostCreateRouter
    let id: Int
    let postsRepository: PostsRepository
    
    init(router: PostCreateRouter, id: Int, postsRepository: PostsRepository) {
        self.router = router
        self.id = id
        self.postsRepository = postsRepository
        
        print("el dato deel iddd: \(id)")
    }
    
    func didTapInTopic(raw: String) {
        createNewPostByTopic(raw: raw)
        router.navigateToPosts()
    }
    
    private func createNewPostByTopic(raw: String) {
        postsRepository.createNewPost(id_topic: self.id, raw: raw) { [weak self] result in
            switch result {
            case .success(let value):
                //self?.view?.showCreatePostsByTopic(posts: value.topicID)
                print("llega el valor")
            case .failure:
                self?.view?.showError(with: "Error")
            }
        }
    }
    
    
}
