//
//  PostRepositoryImpl.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 20/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import Foundation

class PostRepositoryImpl: PostsRepository {
    
    
    let session : SessionAPI
    
    init(session: SessionAPI) {
        self.session = session
    }
    
    
    func getListPostssByTopic(id: Int, completion: @escaping (Result<ListPostsByTopicResponse, Error>) -> ()) {
        let request = ListPostsByTopicRequest(id: id)
        session.send(request: request) { result in
            completion(result)
        }
    }
    
    
}
