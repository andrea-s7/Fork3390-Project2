//
//  MainMenuView.swift
//  GeometryDashClone
//
//  Created by Enrique Medrano on 10/22/24.
//

import UIKit

class MainMenuView: UIView {
    
    var startGameAction: (() -> Void)?
    var showHighScoresAction: (() -> Void)?
    var showSettingsAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainMenu()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainMenu()
    }

    private func setupMainMenu() {
        self.backgroundColor = .blue
        
        // Title Label
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 120, width: self.frame.width, height: 60))
        titleLabel.text = "Geometry Dash"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 40)
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.darkGray
        self.addSubview(titleLabel)

        // Start Game Button
        let startButton = UIButton(frame: CGRect(x: 100, y: 250, width: self.frame.width - 200, height: 60))
        startButton.setTitle("Start Game", for: .normal)
        startButton.backgroundColor = .systemBlue
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        startButton.layer.cornerRadius = 10
        startButton.addTarget(self, action: #selector(startGameTapped), for: .touchUpInside)
        self.addSubview(startButton)

        // High Scores Button
        let highScoresButton = UIButton(frame: CGRect(x: 100, y: 340, width: self.frame.width - 200, height: 60))
        highScoresButton.setTitle("High Scores", for: .normal)
        highScoresButton.backgroundColor = .systemGreen
        highScoresButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        highScoresButton.layer.cornerRadius = 10
        highScoresButton.addTarget(self, action: #selector(showHighScoresTapped), for: .touchUpInside)
        self.addSubview(highScoresButton)

        // Settings Button
        let settingsButton = UIButton(frame: CGRect(x: 100, y: 430, width: self.frame.width - 200, height: 60))
        settingsButton.setTitle("Settings", for: .normal)
        settingsButton.backgroundColor = .systemOrange
        settingsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        settingsButton.layer.cornerRadius = 10
        settingsButton.addTarget(self, action: #selector(showSettingsTapped), for: .touchUpInside)
        self.addSubview(settingsButton)
    }
    
    @objc private func startGameTapped() {
        startGameAction?()
    }

    @objc private func showHighScoresTapped() {
        showHighScoresAction?()
    }

    @objc private func showSettingsTapped() {
        showSettingsAction?()
    }
}
