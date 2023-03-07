//
//  KeyPadView.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/06.
//

import UIKit

class KeyPadView: UIView {
    
    let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let viewModel: KeypadViewModel
    
    init(viewModel: KeypadViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainStackView)
        addLayoutConstraints()
        addButtonsRows()
    }

    required init?(coder: NSCoder) {
       fatalError("not implemented")
    }
    
    private func addButtonsRows() {
        for row in 0 ..< viewModel.maximumNumberInRow {
            let row = addButtons(at: row)
            mainStackView.addArrangedSubview(row)
        }
    }
    
    private func addButtons(at row: Int) -> UIStackView {
        let rowStackView = setHorizontalStackView()
        
        var start = row * 3
        let end = start + viewModel.maximumNumberInRow
        while start <  end {
            start += 1
            let keyButton = KeyButton(key: "\(start)")
            rowStackView.addArrangedSubview(keyButton)
        }
        return rowStackView
    }
    
    private func setHorizontalStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        return stackView
    }
    
    private func addLayoutConstraints() {
        let constrainst = [
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            mainStackView.leftAnchor.constraint(equalTo: leftAnchor),
            mainStackView.rightAnchor.constraint(equalTo: rightAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
        NSLayoutConstraint.activate(constrainst)
    }
}
