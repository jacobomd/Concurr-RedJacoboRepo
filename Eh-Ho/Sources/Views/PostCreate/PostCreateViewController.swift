//
//  PostCreateViewController.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 22/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import UIKit

class PostCreateViewController: UIViewController {

    @IBOutlet weak var textViewRawPost: UITextView!
    
    
    let viewModel: PostCreateViewModel
    
    var textoRaw: String = ""
    
    var posts: AddNewPostResponse?
    
    init(viewModel: PostCreateViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func ButtonSavePost(_ sender: Any) {
        textoRaw = textViewRawPost.text
        print("texto de : \(textoRaw)")
        viewModel.didTapInTopic(raw: textoRaw)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Crear nuevo post"
    //viewModel.viewDidLoad()
        
    }

}

// MARK: - ViewModel Communication

protocol PostCreateViewControllerProtocol: class {
    func showCreatePostsByTopic(posts: AddNewPostResponse)
    func showError(with message: String)
}

extension PostCreateViewController: PostCreateViewControllerProtocol {
    func showCreatePostsByTopic(posts: AddNewPostResponse) {
        self.posts = posts
        
    }
    
    func showError(with message: String) {
        //AQUI ENSEÑAMOS ALERTA
        print("ERROR")
    }
}
