//
//  CategoriesViewController.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 19/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var categoriesTable: UITableView!
    
    let viewModel: CategoriesViewModel
    var categories : [Category] = []
    
    init(viewModel: CategoriesViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesTable.delegate = self
        categoriesTable.dataSource = self
        categoriesTable.rowHeight = 60
        
        categoriesTable.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.identifier)
        
        viewModel.viewDidLoad()
    }
    
}

extension CategoriesViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoriesTable.dequeueReusableCell(withIdentifier: UITableViewCell.identifier, for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.row].name
        return cell
    }
    
    
}

extension CategoriesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

// VIEWMODEL COMMUNICATION
protocol CategoriesViewControllerProtocol: class {
    
    func showListCategories(categories: [Category])
    func showError(with message: String)
}

extension CategoriesViewController:  CategoriesViewControllerProtocol {
    func showError(with message: String) {
        print("Error")
    }
    
    func showListCategories(categories: [Category]) {
        self.categories = categories
        self.categoriesTable.reloadData()
    }
    
    
    
}


