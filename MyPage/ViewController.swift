//
//  ViewController.swift
//  MyPage
//
//  Created by Jeremy Warren on 10/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - TOP STACK VIEW
    var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.circle")
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 128),
            imageView.heightAnchor.constraint(equalToConstant: 128)
        ])
        return imageView
    }()
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Jeddy Warren"
        label.tintColor = .white
        label.font = .systemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var jobTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile App Developer"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var companyLabel: UILabel = {
       let label = UILabel()
        label.text = "I don't work for anybody"
        label.tintColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        return stackView
    }()

    //MARK: - LEFT STACK VIEW
    var leftStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        return stackView
    }()
    var followerLabel: UILabel = {
       let label = UILabel()
        label.text = "Followers"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var followerNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.tintColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - RIGHT STACK VIEW
    
    var rightStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        return stackView
    }()
    var followingLabel: UILabel = {
       let label = UILabel()
        label.text = "Following"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var followingNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "100"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - BUTTON
    // Where is the Follow????
    var button: UIButton = {
        let button = UIButton()
        button.setTitle("Follow", for: .normal)
        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 125),
            button.heightAnchor.constraint(equalToConstant: 40)
        ])
        return button
    }()
        
    
    //MARK: - VIEWDIDLOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        layoutTopStackView()
        layoutLeftStackView()
        layoutRightStackView()
        layoutButton()
    }

    func layoutTopStackView() {
        topStackView.addArrangedSubview(profileImageView)
        topStackView.addArrangedSubview(nameLabel)
        topStackView.addArrangedSubview(jobTitleLabel)
        topStackView.addArrangedSubview(companyLabel)
        view.addSubview(topStackView)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 12),
            topStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        ])
    }
    
    func layoutLeftStackView() {
        leftStackView.addArrangedSubview(followerLabel)
        leftStackView.addArrangedSubview(followerNumberLabel)
        view.addSubview(leftStackView)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            leftStackView.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant: 50),
            leftStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -50)
        ])
    }
    func layoutRightStackView() {
        rightStackView.addArrangedSubview(followingLabel)
        rightStackView.addArrangedSubview(followingNumberLabel)
        view.addSubview(rightStackView)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            rightStackView.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -50),
            rightStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -50)
        ])
    }
    
    func layoutButton() {
        view.addSubview(button)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -25),
            button.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        ])
    }
    
}

