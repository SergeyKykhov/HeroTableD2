//
//  HeaderView.swift
//  HeroTableD2
//
//  Created by Sergey Kykhov on 18.05.2023.
//

import UIKit
import SnapKit

final class HeaderView: UITableViewHeaderFooterView {

    // MARK: - Outlets

    let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()

    // MARK: - Initializers

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(label)
    }

    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView).offset(30)
            make.bottom.equalTo(contentView).inset(5)
            make.height.width.equalTo(25)
        }

        label.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(imageView.snp.right).offset(10)
        }
    }
}

