//
//  CustomTableViewCell.swift
//  HeroTableD2
//
//  Created by Sergey Kykhov on 18.05.2023.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {

    var hero: Hero? {
        didSet {
            heroImage.image = hero?.photoImage
            name.text = hero?.name
            characteristic.text = hero?.characteristic.rawValue
            logoImage.image = hero?.logoImage
        }
    }

    // MARK: - Outlets

    private let heroImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30

        return imageView
    }()

    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private let name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    private let characteristic: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()

    private let imageContainer: UIView = {
        let container = UIView()
        return container
    }()

    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 1
        return stack
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemente")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(characteristic)
        imageContainer.addSubview(heroImage)
        imageContainer.addSubview(logoImage)
        addSubview(imageContainer)
        addSubview(stack)
    }

    private func setupLayout() {
        heroImage.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(imageContainer)
            make.center.equalTo(imageContainer)
        }

        logoImage.snp.makeConstraints { make in
            make.right.bottom.equalTo(imageContainer)
            make.height.width.equalTo(20)
        }

        imageContainer.snp.makeConstraints { make in
            make.top.left.bottom.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(60)
        }

        stack.snp.makeConstraints { make in
            make.centerY.equalTo(imageContainer)
            make.left.equalTo(imageContainer.snp.right).offset(20)
        }
    }


    // MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.hero = nil
    }

}

