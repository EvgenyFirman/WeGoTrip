//
//  StageTableViewCell.swift
//  TestAppWeGo
//
//  Created by Евгений Фирман on 11.08.2021.


import UIKit

// MARK: - Stage TableView Cell (Custom tableView Cell Image)

class StageTableViewCell: UITableViewCell {
    
    var countLabel = UILabel()
    
    var descriptionLabel = UILabel()
    
// MARK: - Override init function
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        setUpTableViewCell()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup View Cell Function
    
    private func setUpTableViewCell() {
        
        // Cell background color == white
        self.backgroundColor = .white
        
        // ADD and Config CountLabel
        addSubview(countLabel)
        
        countLabel.font = UIFont.systemFont(ofSize: 15, weight: .black)
        countLabel.textColor = .lightGray
    
        
        countLabel.snp.makeConstraints { maker in
            maker.left.equalTo(25)
            maker.centerY.equalToSuperview()
        }
        
        
        // ADD and Config Description Label
        addSubview(descriptionLabel)
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 0
    
        descriptionLabel.snp.makeConstraints { maker in
            maker.centerY.equalToSuperview()
            maker.left.equalTo(countLabel.snp.right).offset(10)
        }
    }
}
