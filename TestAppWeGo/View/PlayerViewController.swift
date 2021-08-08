//
//  PlayerViewController.swift
//  TestAppWeGo
//
//  Created by Евгений Фирман on 09.08.2021.
//

import UIKit
import SnapKit


@available(iOS 13.0, *)
class PlayerViewController: UIViewController {
    
    override func viewDidLoad(){
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        initialize()
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
        
        
        // HEADER DOWN BUTTON INITIALIZE
        let headerList = UIButton()
    
        // Configuring SF Icon
        let boldList = UIImage(systemName: "list.bullet", withConfiguration: boldConfig)
        headerList.setImage(boldList, for: .normal)
        headerList.tintColor = .black
        
        // Add button to view
        topHeader.addSubview(headerList)
        
        // Add constraints to options button
        headerList.snp.makeConstraints { maker in
            maker.right.equalTo(-15)
            maker.top.centerY.equalTo(topHeader)
        }
        
        
        // HEADER DOWN BUTTON INITIALIZE
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
        
        
        // HEADER DOWN BUTTON INITIALIZE
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
        
        
        
        
        // INITIALIZE AUDIO VIEW
        let audioView = UIView()
        
        audioView.backgroundColor = .red
        
        view.addSubview(audioView)
        
        // Top Header Constraints
        audioView.snp.makeConstraints { maker in
            maker.width.equalTo(view.frame.size.width)
            maker.top.equalTo(topHeader.snp.bottom).offset(10)
            maker.height.equalTo(200)
            
        }
        
        
        
    }
}
