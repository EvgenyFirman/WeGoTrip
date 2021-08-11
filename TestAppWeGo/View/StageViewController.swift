//
//  StageViewController.swift
//  TestAppWeGo
//
//  Created by Евгений Фирман on 09.08.2021.
//

import SnapKit
import UIKit


@available(iOS 13.0, *)

class StageViewController: UIViewController {
    
    
    let tableView = UITableView()
    
    var characters = ["Link", "Zelda", "Ganondorf", "Midna"]
    
    
    override func viewDidLoad(){
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        initialize()
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        setUpTableViewCell()
        
    }
    
    
    private func initialize() {
        
        // INITIALIZE HEADER SWIFT
        let topHeader = UIView()
        
        topHeader.backgroundColor = .white
        
        view.addSubview(topHeader)
        
        // Top Header Constraints
        topHeader.snp.makeConstraints { maker in
            maker.height.equalTo(80)
            maker.width.equalTo(view.frame.size.width)
            maker.top.equalToSuperview()
        }
        
        
        
        // HEADER DOWN BUTTON INITIALIZE
        let headerDownButton = UIButton()
    
        // Configuring SF Icon
        let boldConfig = UIImage.SymbolConfiguration(pointSize: 24)
        let boldChevron = UIImage(systemName: "chevron.down", withConfiguration: boldConfig)
        headerDownButton.setImage(boldChevron, for: .normal)
        headerDownButton.tintColor = .black
        
        // Add button to view
        topHeader.addSubview(headerDownButton)
        
        // Add constraints to options button
        headerDownButton.snp.makeConstraints { maker in
            maker.left.equalTo(15)
            maker.top.centerY.equalTo(topHeader)
        }
        
        headerDownButton.addTarget(self, action: #selector(closeViewController), for: .touchUpInside)
        
        
        // HEADER DOWN BUTTON INITIALIZE
        let headerList = UIButton()
    
        // Configuring SF Icon
        let boldList = UIImage(systemName: "xmark", withConfiguration: boldConfig)
        headerList.setImage(boldList, for: .normal)
        headerList.tintColor = .black
        
        // Add button to view
        topHeader.addSubview(headerList)
        
        // Add constraints to options button
        headerList.snp.makeConstraints { maker in
            maker.right.equalTo(-15)
            maker.top.centerY.equalTo(topHeader)
        }
        
        // Add target to open stage view controller
        
        headerList.addTarget(self, action: #selector(closeViewController), for: .touchUpInside)
        
        
        
        
        
        // HEADER AUDIO LABEL INITIALIZE
        let headerAudioLabel = UILabel()

        headerAudioLabel.text = "Аудио-экскурсия"
        
        headerAudioLabel.font = headerAudioLabel.font.withSize(14)
        
        headerAudioLabel.textColor = .lightGray
        
        // Add button to view
        topHeader.addSubview(headerAudioLabel)

        // Add constraints to header audio label
        headerAudioLabel.snp.makeConstraints { maker in
            maker.top.equalTo(20)
            maker.centerX.equalTo(topHeader)
        }
        
        
        // HEADER AUDIO LABEL DESCRIPTION INITIALIZE
        let headerAudioLabelDescription = UILabel()

        headerAudioLabelDescription.text = "Русский музей: Импрессионисты"
        
        headerAudioLabelDescription.textColor = .black
        
        headerAudioLabelDescription.font = headerAudioLabelDescription.font.withSize(15)
        
        // Add button to view
        topHeader.addSubview(headerAudioLabelDescription)

        // Add constraints to header audio label
        headerAudioLabelDescription.snp.makeConstraints { maker in
            maker.bottom.equalTo(-20)
            maker.centerX.equalTo(topHeader)
        }
        
        
        
        // Initialize UITableView
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { maker in
            maker.top.equalTo(topHeader.snp.bottom).offset(5)
            maker.left.equalTo(view.safeAreaLayoutGuide.snp.left)
            maker.right.equalTo(view.safeAreaLayoutGuide.snp.right)
            maker.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }

    // Function for closing view controller
    @objc func closeViewController() {
       
        dismiss(animated: true, completion: nil)
    
    }
    
    // Register TableViewCell
    
    func setUpTableViewCell() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}

@available(iOS 13.0, *)

extension StageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = characters[indexPath.row]
        
        return cell
    }
}


