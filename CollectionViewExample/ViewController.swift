//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by Gonzalo Campos on 22/07/23.
//

import UIKit

class ViewController: UIViewController {

    private let gridCollectionView: UICollectionView = {
        let cv = UICollectionView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        gridCollectionView.backgroundColor = .blue
        view.addSubview(gridCollectionView)

        NSLayoutConstraint.activate([
            gridCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            gridCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gridCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            gridCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])
    }
}
