//
//  PlayerViewController.swift
//  TestAppWeGo
//
//  Created by Евгений Фирман on 09.08.2021.

import UIKit
import SnapKit


@available(iOS 13.0, *)

// MARK: - PlayerViewController initialization

class PlayerViewController: UIViewController {
    
    // Recieving stage instance
    var stageInstance = [StageInstance]()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        initialize()
    }
    
    
// MARK: - Initialization View Function
    
    private func initialize() {
        
        
        // INITIALIZE HEADER
        let topHeader = UIView()
        
        topHeader.backgroundColor = .white
        
        view.addSubview(topHeader)
        
        // Top Header Constraints
        topHeader.snp.makeConstraints { maker in
            maker.height.equalTo(80)
            maker.width.equalTo(view.frame.size.width)
            maker.top.equalTo(view.safeAreaLayoutGuide)
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
        
        // Add target to open stage view controller
        headerList.addTarget(self, action: #selector(openStageScreen), for: .touchUpInside)
        
        
        
        
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

        headerAudioLabelDescription.text = "\(stageInstance[0].name)"
        
        headerAudioLabelDescription.textColor = .black
        
        headerAudioLabelDescription.font = headerAudioLabelDescription.font.withSize(15)
        
        // Add button to view
        topHeader.addSubview(headerAudioLabelDescription)

        // Add constraints to header audio label
        headerAudioLabelDescription.snp.makeConstraints { maker in
            maker.bottom.equalTo(-20)
            maker.centerX.equalTo(topHeader)
        }
        
        
        
        // INITIALIZE MAIN AUDIO VIEW
        let audioView = UIView()
        
        audioView.backgroundColor = .white
        
        // Shadow for audioView
        audioView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        audioView.layer.shadowOffset = CGSize(width: 0, height: 3)
        audioView.layer.shadowOpacity = 1.0
        audioView.layer.shadowRadius = 5.0
        audioView.layer.masksToBounds = false
        
        audioView.layer.cornerRadius = 10
        
        view.addSubview(audioView)
        
        // Main Audio View Constraints
        audioView.snp.makeConstraints { maker in
            maker.top.equalTo(topHeader.snp.bottom).offset(10)
            maker.height.equalTo(220)
            maker.right.equalTo(-15)
            maker.left.equalTo(15)
        }
        
        
        
        
        // HEADER AUDIO LABEL INITIALIZE
        let mainTitleAudioView = UILabel()

        mainTitleAudioView.text = "\(stageInstance[0].name)"
    
        mainTitleAudioView.font =  UIFont.systemFont(ofSize: 20, weight: .black)
        
        mainTitleAudioView.numberOfLines = 0
        
        mainTitleAudioView.textColor = .black
        
        
        // Add button to view
        audioView.addSubview(mainTitleAudioView)

        // Add constraints to header audio label
        mainTitleAudioView.snp.makeConstraints { maker in
            maker.top.equalTo(20)
            maker.left.equalTo(20)
            maker.width.equalTo(300)
            
        }
        
        
        
        // INIT OF PROGRESS VIEW
        let progressView = UIProgressView(progressViewStyle: .bar)

        // Progressview trackTint color
        progressView.trackTintColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)

        // progressView tint color
        progressView.tintColor = UIColor(red: 0/255, green: 139/255, blue: 214/255, alpha: 1.0)

        // ProgressView Progress
        progressView.setProgress(0.6, animated: true)

        // Making progress bar round
        progressView.layer.sublayers![1].cornerRadius = 5
        progressView.subviews[1].clipsToBounds = true

        // Add progress View to subview
        audioView.addSubview(progressView)

         // SnapKit Constraints
        progressView.snp.makeConstraints { maker in
            maker.height.equalTo(6)
            maker.left.equalTo(20)
            maker.right.equalTo(-20)
            maker.top.equalTo(mainTitleAudioView).offset(70)

        }
        
        
        
        // INITIALIZE NUMBER START UNDER PROGRESS VIEW
        let progressViewNumStart = UILabel()

        progressViewNumStart.text = "0:45"
    
        progressViewNumStart.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        progressViewNumStart.numberOfLines = 0
        
        progressViewNumStart.textColor = .gray
        
        
        
        // Add button to view
        audioView.addSubview(progressViewNumStart)

        // Add constraints to header audio label
        progressViewNumStart.snp.makeConstraints { maker in
            maker.top.equalTo(progressView).offset(20)
            maker.left.equalTo(20)
        }
        
        
        // INITIALIZE NUMBER EN UNDER PROGRESS VIEW
        let progressViewNumEND = UILabel()

        progressViewNumEND.text = "0:30"
    
        progressViewNumEND.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        progressViewNumEND.numberOfLines = 0
        
        progressViewNumEND.textColor = .gray
        
        
        // Add button to view
        audioView.addSubview(progressViewNumEND)

        // Add constraints to header audio label
        progressViewNumEND.snp.makeConstraints { maker in
            maker.top.equalTo(progressView).offset(20)
            maker.right.equalTo(-20)
        }
        
        
        
        
        
        
        //  INITIALIZE PLAYBACKWARD5 BUTTON IN AUDIO PLAYER
        let audioViewBackwardFiveButton = UIButton()
    
        // Configuring SF Icon
        let boldaudioViewBackwardFiveButton = UIImage(systemName: "gobackward.10", withConfiguration: UIImage.SymbolConfiguration(pointSize: 26))
        audioViewBackwardFiveButton.setImage(boldaudioViewBackwardFiveButton, for: .normal)
        audioViewBackwardFiveButton.tintColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
        
        // Add button to view
        audioView.addSubview(audioViewBackwardFiveButton)
        
         // Add constraints to options button
        audioViewBackwardFiveButton.snp.makeConstraints { maker in
            maker.left.equalTo(audioView).inset(85)
            maker.top.equalTo(progressView).inset(50)
        }
        
        
        
        
        //  INITIALIZE PLAY BUTTON IN AUDIO PLAYER
        let audioViewPlayButton = UIButton()

        // Configuring SF Icon
        let boldAudioViewPlayButton = UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 70))
        audioViewPlayButton.setImage(boldAudioViewPlayButton, for: .normal)
        audioViewPlayButton.tintColor = UIColor(red: 36/255, green: 200/255, blue: 240/255, alpha: 1)

        // Add button to view
        audioView.addSubview(audioViewPlayButton)

        // Add constraints to options button
        audioViewPlayButton.snp.makeConstraints { maker in
            maker.centerX.equalTo(audioView)
            maker.top.equalTo(progressView).inset(30)
        }
        
        
        
        //  INITIALIZE PLAYFORWARD5 BUTTON IN AUDIO PLAYER
        let audioViewForwardFiveButton = UIButton()

        // Configuring SF Icon
        let boldAudioViewForwardFiveButton = UIImage(systemName: "goforward.10", withConfiguration: UIImage.SymbolConfiguration(pointSize: 26))
        audioViewForwardFiveButton.setImage(boldAudioViewForwardFiveButton, for: .normal)
        audioViewForwardFiveButton.tintColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)

        // Add button to view
        audioView.addSubview(audioViewForwardFiveButton)

        // Add constraints to options button
        audioViewForwardFiveButton.snp.makeConstraints { maker in
            maker.right.equalTo(audioView).inset(85)
            maker.top.equalTo(progressView).inset(50)
        }
        
        
        
        //  INITIALIZE PLAYFORWARD5 BUTTON IN AUDIO PLAYER
        let audioView1Speed = UIButton()

        // Configuring SF Icon
        let boldAudioView1Speed = UIImage(systemName: "1.square.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 26))
        audioView1Speed.setImage(boldAudioView1Speed, for: .normal)
        audioView1Speed.tintColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)

        // Add button to view
        audioView.addSubview(audioView1Speed)

        // Add constraints to options button
        audioView1Speed.snp.makeConstraints { maker in
            maker.right.equalTo(audioView).inset(20)
            maker.top.equalTo(progressView).inset(55)
        }
        
        
        
        // INITIALIZE LABEL TEXT1
        let labelText1 = UILabel()

        labelText1.text = "\(stageInstance[0].descText1)"
    
        labelText1.font = UIFont.systemFont(ofSize: 15, weight: .light)
        
        labelText1.numberOfLines = 0
        
        labelText1.textColor = .black
        
        
        // Add button to view
        view.addSubview(labelText1)

        // Add constraints to header audio label
        labelText1.snp.makeConstraints { maker in
            maker.top.equalTo(audioView.snp.bottom).offset(20)
            maker.right.equalTo(-30)
            maker.left.equalTo(20)
        }
        
        
        
        
        // INITIALIZE LABEL TEXT2
        let labelText2 = UILabel()

        labelText2.text = "\(stageInstance[0].descText2)"
    
        labelText2.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        
        labelText2.numberOfLines = 0
        
        labelText2.textColor = .black
        
        
        // Add button to view
        view.addSubview(labelText2)

        // Add constraints to header audio label
        labelText2.snp.makeConstraints { maker in
            maker.top.equalTo(labelText1.snp.bottom).offset(10)
            maker.right.equalTo(-30)
            maker.left.equalTo(20)
        }
        
        
        // INITIALIZE LABEL TEXT2
        let labelText3 = UILabel()

        labelText3.text = "\(stageInstance[0].descText3)"
    
        labelText3.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        labelText3.numberOfLines = 0
        
        labelText3.textColor = .black
        
        
        // Add button to view
        view.addSubview(labelText3)

        // Add constraints to header audio label
        labelText3.snp.makeConstraints { maker in
            maker.top.equalTo(labelText2.snp.bottom).offset(10)
            maker.right.equalTo(-30)
            maker.left.equalTo(20)
        }
    
    
    }
    
// MARK: - Function for opening new screen
    @objc func openStageScreen() {
       
        let stageViewController = StageViewController()
  
        
        let stageInstanceSelf = self.stageInstance
            
        stageViewController.stageInstance = stageInstanceSelf
        
        present(stageViewController, animated: false, completion: nil)
    
    }
    
    
// MARK: - Function for closing view controller
    @objc func closeViewController() {
       
        dismiss(animated: true, completion: nil)
    
    }
}
