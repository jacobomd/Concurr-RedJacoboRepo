//
//  CreateTopicsViewController.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 25/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import UIKit

class CreateTopicsViewController: UIViewController {

    @IBOutlet weak var textfieldTitulo: UITextField!
    
    @IBOutlet weak var textfieldDescripcion: UITextField!
    
    let viewModel: CreateTopicsViewModel
    var topics: AddNewTopicResponse?
    
    var textTitle: String?
    var textDescription: String?
    
    init(viewModel: CreateTopicsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textfieldTitulo.placeholder = "Introduce el titulo"
        textfieldDescripcion.placeholder = "Intoduce la descripcion ..."
        self.title = "Crear topics"
    }

    @IBAction func buttonCrearTopic(_ sender: Any) {
        
        textTitle = textfieldTitulo.text
        textDescription = textfieldDescripcion.text
        viewModel.didTapInTopic(title: textTitle!, raw: textDescription!)
        textfieldTitulo.text = ""
        textfieldDescripcion.text = ""
    }
}

// VIEWMODEL COMMUNICATION
protocol CreateTopicsViewControllerProtocol: class {
    
    func createNewTopic()
    func showError(with message: String)
}

extension CreateTopicsViewController: CreateTopicsViewControllerProtocol {
    func createNewTopic() {
        showPustTopicAlert()
    }
    
    func showError(with message: String) {
        //AQUI ENSEÑAMOS ALERTA
        print("ERROR")
    }
    
}

extension CreateTopicsViewController {
    
    private func showPustTopicAlert()  {
        //Create the alert
        let alert = UIAlertController(title: "Topic creado con exito", message: nil, preferredStyle: .alert)
        
        //Creamos la accion
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        //Aañadimos a la alerta
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}


