//
//  ViewController.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 16.11.2020.
//

import UIKit
import EasyPeasy
class MainViewController: UIViewController, UITableViewDelegate{
    
    private let viewModel: MainViewControllerViewModel
    private let table: UITableView = UITableView()
    
    init(_ viewModel: MainViewControllerViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setupView()
        viewModel.getVenueList { [weak self] in
            self?.table.reloadData()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        view.addSubview(table)
        table.easy.layout(Edges())
        table.delegate = self
        table.dataSource = viewModel
        table.register(MainViewControllerCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let v = viewModel.venues?[indexPath.row], let id = v.id {
            viewModel.openDetailedViewController(id: id)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
}

