//
//  VenueDetailsViewController.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 17.11.2020.
//

import Foundation
import UIKit
import EasyPeasy
class VenueDetailsViewController: UIViewController, UITableViewDelegate {
    
    private let viewModel: VenueDetailsViewModel
    private let table: UITableView = UITableView()
    
    init(_ viewModel: VenueDetailsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setupView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getVenuesDetails { [weak self] _ in
            self?.table.reloadData()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        view.backgroundColor = .systemGray
        view.addSubview(table)
        table.easy.layout(Edges())
        table.delegate = self
        table.dataSource = viewModel
        table.register(VenueDetailPhotoCell.self, forCellReuseIdentifier: "photo")
        table.register(VenueDetailInfoCell.self, forCellReuseIdentifier: "info")
        table.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch viewModel.cells[indexPath.row] {
        case .photo:
            return 300
        default:
            return 55
        }
    }
}
