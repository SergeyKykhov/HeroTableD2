//
//  ViewController.swift
//  HeroTableD2
//
//  Created by Sergey Kykhov on 18.05.2023.
//

import UIKit
import SnapKit

class BestHeroViewController: UIViewController {

    private var heros: [[Hero]]?

    // MARK: - Outlets
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        heros = Hero.heros
        view.backgroundColor = .red
        title = "Hero Dota 2"
        navigationController?.navigationBar.prefersLargeTitles = true

        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
}

// MARK: - Extension

extension BestHeroViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return heros?.count ?? 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heros?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        cell?.hero = heros?[indexPath.section][indexPath.row]
        cell?.accessoryType = .detailDisclosureButton
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.hero = heros?[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! HeaderView

        switch section {
        case 0:
            view.label.text = "Strength hero"
            view.imageView.image = UIImage(systemName: "arrow.turn.left.down")
            return view
        case 1:
            view.label.text = "Agility hero"
            view.imageView.image = UIImage(systemName: "arrow.turn.left.down")
            return view
        case 2:
            view.label.text = "Intelligence hero"
            view.imageView.image = UIImage(systemName: "arrow.turn.left.down")
            return view
        default:
            return view
        }
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Эти герои обладают максимальным количеством здоровья и увеличенной скорость его восстановления. Имеют повышенное сопротивление к магии."
        case 1:
            return "Ловкие и быстрые герои. Высокая скорость передвижения, скорость атаки, а также броня персонажа."
        case 2:
            return "Мудрые и расчетливые герои. Имеют максимальный запас маны и ее регенерацию, а также усиление урона от заклинаний."
        default:
            return "ERROR"
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            heros?[indexPath.section].remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
}



