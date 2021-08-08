//
//  ViewController.swift
//  TestAppWeGo
//
//  Created by Евгений Фирман on 06.08.2021.
//
import SnapKit
import UIKit


@available(iOS 13.0, *)
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view.
        intialize()
    }
    

    private func intialize(){
        
        // INIT OF PROGRESS VIEW
        let progressView =  UIProgressView(progressViewStyle: .bar)
        
        // Progressview trackTint color
        progressView.trackTintColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        
        // progressView tint color
        progressView.tintColor = .blue
            
        // ProgressView Progress
        progressView.setProgress(0.2, animated: true)
        
        // Making progress bar round
        progressView.layer.sublayers![1].cornerRadius = 5
        progressView.subviews[1].clipsToBounds = true
        
        // Add progress View to subview
        view.addSubview(progressView)
        
        // SnapKit Constraints
        progressView.snp.makeConstraints { maker in
            maker.height.equalTo(6)
            maker.width.equalTo(view.frame.size.width + 10)
            maker.left.equalTo(-10)
            maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
        }
        
        
        
        
        // INIT OF CLOSE BUTTON
        let closeButton = UIButton()
        
        closeButton.backgroundColor = .white
        
        // Button corner radius set up
        closeButton.clipsToBounds = true
        closeButton.layer.cornerRadius = 25
        
        // Shadow for button setup
        closeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        closeButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        closeButton.layer.shadowOpacity = 1.0
        closeButton.layer.shadowRadius = 5.0
        closeButton.layer.masksToBounds = false
        
        // Configuring SF Icon
        let boldConfig = UIImage.SymbolConfiguration(pointSize: 25)
        let boldXmark = UIImage(systemName: "xmark", withConfiguration: boldConfig)
        closeButton.setImage(boldXmark, for: .normal)
        closeButton.tintColor = .lightGray
        
        // Add button to view
        view.addSubview(closeButton)
        
        // Add constraints to options button
        closeButton.snp.makeConstraints { maker in
            maker.height.equalTo(50)
            maker.width.equalTo(50)
            maker.left.equalTo(20)
            maker.top.equalTo(progressView).inset(30)
        }
        

        // INIT OF OPTIONS BUTTON
        let optionsButton = UIButton()
        
        optionsButton.backgroundColor = .white
        
        // Button corner radius set up
        optionsButton.clipsToBounds = true
        optionsButton.layer.cornerRadius = 25
        
        
        // Configuring SF Icon
        let boldEllipsis = UIImage(systemName: "ellipsis", withConfiguration: boldConfig)
        optionsButton.setImage(boldEllipsis, for: .normal)
        optionsButton.tintColor = .blue
        
        // Shadow for button setup
        optionsButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        optionsButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        optionsButton.layer.shadowOpacity = 1.0
        optionsButton.layer.shadowRadius = 5.0
        optionsButton.layer.masksToBounds = false
        
        // Add button to view
        view.addSubview(optionsButton)
        
        // Add constraints to options button
        optionsButton.snp.makeConstraints { maker in
            maker.height.equalTo(50)
            maker.width.equalTo(50)
            maker.right.equalTo(-20)
            maker.top.equalTo(progressView).inset(30)
        }
        
        
        
        // INITIALIZE STEP TEXT
        let stepLabel = UILabel()
        
        // Configuring Step Label
        stepLabel.text = "STEP 3/10"
        stepLabel.font = stepLabel.font.withSize(15)
        stepLabel.textColor = .lightGray
        
        view.addSubview(stepLabel)
        
        // Make constraints of step label
        stepLabel.snp.makeConstraints { maker in
            maker.left.equalTo(20)
            maker.top.equalTo(closeButton).inset(70)
        }
        
        
        // INITIALIZE WELCOME TEXT
        let welcomeLabel = UILabel()
        
        // Configuring Welcome Label
        welcomeLabel.text = "Добро Пожаловать в Зимний Дворец"
        welcomeLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        welcomeLabel.textColor = .black
        welcomeLabel.numberOfLines = 0
        
        view.addSubview(welcomeLabel)
        
        // Make constraints of welcome label
        welcomeLabel.snp.makeConstraints { maker in
            maker.left.equalTo(20)
            maker.width.equalTo(250)
            maker.top.equalTo(stepLabel).inset(70)
        }
        
        
        
        
        // INITIALIZE MAIN IMAGE
        
        let mainImage = UIImage()
        
        let mainImageView = UIImageView(image: mainImage)
        
        let imagePicture = UIImage(named: "image")
        
        mainImageView.image = imagePicture
        
        mainImageView.contentMode = .scaleAspectFill
        
        view.addSubview(mainImageView)
        
        mainImageView.snp.makeConstraints { maker in
            
            maker.width.equalTo(view.frame.size.width)
            
            maker.top.equalTo(welcomeLabel).offset(80)
            
        }
        
        
        
        // INITIALIZE DESCRIPTION TEXT
        let descriptionLabel = UILabel()

        // Configuring description Label
        descriptionLabel.text = "Do you feel shouting Fight! Fight!, with the mad crowd wearing your comfortable toga today?"
        descriptionLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 0

        view.addSubview(descriptionLabel)

        // Make constraints of description label
        descriptionLabel.snp.makeConstraints { maker in
            maker.left.equalTo(10)
            maker.right.equalTo(-10)
            maker.top.equalTo(mainImageView.snp.bottom).offset(30)
        }
        
        
        
        // INIT OF PROGRESS VIEW BOTTOM
        let progressViewBottom = UIProgressView(progressViewStyle: .bar)

        // Progressview trackTint color
        progressViewBottom.trackTintColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)

        // progressView tint color
        progressViewBottom.tintColor = UIColor(red: 0/255, green: 139/255, blue: 214/255, alpha: 1.0)

        // ProgressView Progress
        progressViewBottom.setProgress(0.2, animated: true)

        // Making progress bar round
        progressViewBottom.layer.sublayers![1].cornerRadius = 5
        progressViewBottom.subviews[1].clipsToBounds = true

        // Add progress View to subview
        view.addSubview(progressViewBottom)

        // SnapKit Constraints
        progressViewBottom.snp.makeConstraints { maker in
            maker.height.equalTo(6)
            maker.width.equalTo(view.frame.size.width + 10)
            maker.left.equalTo(-10)
            maker.top.equalTo(descriptionLabel).offset(70)
//            maker.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        
        
        
        
        // INITIALIZE MINI PLAYER SWIFT
        let miniPlayer = UIView()
        
        miniPlayer.backgroundColor = .white
        
        view.addSubview(miniPlayer)
        
        miniPlayer.snp.makeConstraints { maker in
            maker.height.equalTo(80)
            maker.width.equalTo(view.frame.size.width)
            maker.top.equalTo(progressViewBottom).offset(6)
            maker.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        
        
        
        //  INITIALIZE MORE BUTTON IN MINI PLAYER
        let miniMoreButton = UIButton()
    
        // Configuring SF Icon
        let boldConfig3 = UIImage.SymbolConfiguration(pointSize: 27)
        let boldEllipsisMini = UIImage(systemName: "ellipsis", withConfiguration: boldConfig3)
        miniMoreButton.setImage(boldEllipsisMini, for: .normal)
        miniMoreButton.tintColor = .black
        
        // Add button to view
        miniPlayer.addSubview(miniMoreButton)
        
        // Add constraints to options button
        miniMoreButton.snp.makeConstraints { maker in
            maker.left.equalTo(15)
            maker.top.centerY.equalTo(miniPlayer)
        }
        
        
        
        
        //  INITIALIZE MORE BUTTON IN MINI PLAYER
        let miniPauseButton = UIButton()
    
        // Configuring SF Icon
        let boldPauseMini = UIImage(systemName: "pause.fill", withConfiguration: boldConfig3)
        miniPauseButton.setImage(boldPauseMini, for: .normal)
        miniPauseButton.tintColor = .black
        
        // Add button to view
        miniPlayer.addSubview(miniPauseButton)
        
        // Add constraints to options button
        miniPauseButton.snp.makeConstraints { maker in
            maker.left.equalTo(miniMoreButton).offset(40)
            maker.top.centerY.equalTo(miniPlayer)
        }
        
        
        
        
        
        //  INITIALIZE DESCRIPTION BUTTON IN MINI PLAYER
        let miniDescription = UIButton()
    
        // Configuring SF Icon
        miniDescription.setTitleColor(.black, for: .normal)
        miniDescription.setTitle("Добро пожаловать в зимний дворец", for: .normal)
        miniDescription.titleLabel?.textAlignment = .natural
        miniDescription.titleLabel?.font = .systemFont(ofSize: 14)
        miniDescription.titleLabel?.lineBreakMode = .byWordWrapping

        
        // Add button to view
        miniPlayer.addSubview(miniDescription)
        
        // Add constraints to options button
        miniDescription.snp.makeConstraints { maker in
            maker.width.equalTo(140)
            maker.height.equalTo(miniPlayer.snp.height)
            maker.left.equalTo(miniPauseButton).offset(40)
            maker.top.centerY.equalTo(miniPlayer)
            
        }
        
        // Open PLAYER Screen
        miniDescription.addTarget(self, action: #selector(openPlayerScreen), for: .touchUpInside)
        

        
        //  INITIALIZE PLAYFORWARD5 BUTTON IN MINI PLAYER
        let miniForwardFiveButton = UIButton()
    
        // Configuring SF Icon
        let boldForwardFiveMini = UIImage(systemName: "goforward.10", withConfiguration: boldConfig3)
        miniForwardFiveButton.setImage(boldForwardFiveMini, for: .normal)
        miniForwardFiveButton.tintColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
        
        // Add button to view
        miniPlayer.addSubview(miniForwardFiveButton)
        
        // Add constraints to options button
        miniForwardFiveButton.snp.makeConstraints { maker in
            maker.right.equalTo(-15)
            maker.top.centerY.equalTo(miniPlayer)
        }
        
        
        
        //  INITIALIZE PLAYFORWARD5 BUTTON IN MINI PLAYER
        let speedButton = UIButton()
    
        // Configuring SF Icon
        let boldSpeedButton = UIImage(systemName: "1.circle", withConfiguration: boldConfig3)
        speedButton.setImage(boldSpeedButton, for: .normal)
        speedButton.tintColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
        
        // Add button to view
        miniPlayer.addSubview(speedButton)
        
        // Add constraints to options button
        speedButton.snp.makeConstraints { maker in
            maker.right.equalTo(miniForwardFiveButton).inset(45)
            maker.top.centerY.equalTo(miniPlayer)
        }
        
        
        
        
        //  INITIALIZE PLAYFORWARD5 BUTTON IN MINI PLAYER
        let miniBackwardFiveButton = UIButton()
    
        // Configuring SF Icon
        let boldBackwardFiveMini = UIImage(systemName: "gobackward.10", withConfiguration: boldConfig3)
        miniBackwardFiveButton.setImage(boldBackwardFiveMini, for: .normal)
        miniBackwardFiveButton.tintColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
        
        // Add button to view
        miniPlayer.addSubview(miniBackwardFiveButton)
        
        // Add constraints to options button
        miniBackwardFiveButton.snp.makeConstraints { maker in
            maker.right.equalTo(speedButton).inset(45)
            maker.top.centerY.equalTo(miniPlayer)
        }

        
    }
    
    // Function for opening new screen
    @objc func openPlayerScreen() {
       
        let playerViewController = PlayerViewController()
        
        present(playerViewController, animated: true, completion: nil)
    
    }
}
