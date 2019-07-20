//
//  LatestRepositoryImpl.swift
//  Eh-Ho
//
//  Created by Ignacio Garcia Sainz on 16/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import Foundation

class TopicsRepositoryImpl: TopicsRepository {


    let session: SessionAPI
    
    init(session: SessionAPI) {
        self.session = session
    }

    func getSingleTopicById(id: Int, completion: @escaping (Result<SingleTopicResponse, Error>) -> ()) {
        let request = SingleTopicRequest(id: id)
        session.send(request: request) { result in
            completion(result)
        }
    }
    
    func getListTopicsByCategory(id: Int, completion: @escaping (Result<ListTopicsByCategoryResponse, Error>) -> ()) {
        let request = ListTopicsByCategoryRequest(id: id)
        session.send(request: request) { (result) in
            completion(result)
        }
    }

}
