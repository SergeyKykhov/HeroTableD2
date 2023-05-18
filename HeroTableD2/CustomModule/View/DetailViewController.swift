//
//  DetailViewController.swift
//  HeroTableD2
//
//  Created by Sergey Kykhov on 18.05.2023.
//

import UIKit
import SnapKit

final class DetailViewController: UIViewController {

    var hero: Hero?

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 150
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 5
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        return label
    }()

    private lazy var labelContrPick: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()

    private let characteristic: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()

    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupHierarchy()
        setupLayout()

    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(stack)
        stack.addArrangedSubview(characteristic)
//        stack.addArrangedSubview(logoImage)
        view.addSubview(imageView)
        view.addSubview(labelContrPick)
        view.addSubview(label)
        fillSettings()

    }

    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.height.equalTo(300)
        }

        labelContrPick.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(imageView.snp.bottom).offset(150)

        }

        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(imageView.snp.bottom).offset(20)
        }

        stack.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(label.snp.bottom).offset(10)
        }
    }

    func fillSettings() {
        imageView.image = hero?.photoImage
        labelContrPick.text = "Контр пики - \(hero?.contrPick ?? "")"
        label.text = hero?.name
//        logoImage.image = hero?.logoImage
        characteristic.text = "\(hero?.characteristic.rawValue ?? "") - основная характеристика"
    }
}


