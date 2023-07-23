//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by Gonzalo Campos on 22/07/23.
//

import UIKit

private let kCellIdentifier = "UICollectionViewCell"

class ViewController: UIViewController {

    private let gridCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 200, height: 200)
        layout.scrollDirection = .horizontal
//        layout.minimumLineSpacing = 200
//        layout.minimumInteritemSpacing =  200
        let cv = UICollectionView(frame: .zero,
                                  collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        gridCollectionView.backgroundColor = .blue
        gridCollectionView.register(UICollectionViewCell.self,
                                    forCellWithReuseIdentifier: kCellIdentifier)
        gridCollectionView.dataSource = self
        view.addSubview(gridCollectionView)

        NSLayoutConstraint.activate([
            gridCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            gridCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gridCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            gridCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])
    }
}

// MARK: - UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        house.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
            collectionView.dequeueReusableCell(
                withReuseIdentifier: kCellIdentifier,
                for: indexPath
            )
        cell.backgroundColor = .red
        return cell
    }
}
