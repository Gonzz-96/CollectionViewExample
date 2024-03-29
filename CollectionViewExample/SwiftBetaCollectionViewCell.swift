//
//  SwiftBetaCollectionViewCell.swift
//  CollectionViewExample
//
//  Created by Gonzalo Campos on 22/07/23.
//

import UIKit

import UIKit

class SwiftBetaCollectionViewCell: UICollectionViewCell {

    static let id = "SwiftBetaCollectionViewCell"

    private let swiftBetaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layer.borderColor = UIColor.black.cgColor
        stackView.layer.borderWidth = 1
        return stackView
    }()

    private let deviceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let deviceNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)

        addSubview(swiftBetaStackView)
        swiftBetaStackView.addArrangedSubview(deviceImageView)
        swiftBetaStackView.addArrangedSubview(deviceNameLabel)

        NSLayoutConstraint.activate([
            swiftBetaStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            swiftBetaStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            swiftBetaStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(model: Device) {
        deviceImageView.image = UIImage(systemName: model.imageName)
        deviceNameLabel.text = model.title
    }
}
