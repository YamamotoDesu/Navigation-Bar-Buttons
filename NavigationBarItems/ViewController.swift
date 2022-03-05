//
//  ViewController.swift
//  NavigationBarItems
//
//  Created by 山本響 on 2022/03/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Bar Items"
        view.backgroundColor = .systemBlue
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemTeal
        button.setTitle("Go To View 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        navigationController?.navigationBar.tintColor = .label
        
        
        confiureItems()
    }
    
    private func confiureItems() {
        self.navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                barButtonSystemItem: .add,
                target: self,
                action: nil
            ),
            UIBarButtonItem(
                image: UIImage(systemName: "person.circle"),
                style: .done,
                target: self,
                action: nil
            ),
        ]
        
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
//            barButtonSystemItem: .add,
//            target: self,
//            action: nil)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .done,
            target: self,
            action: nil
        )
        
//        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
//        customView.text = "Hello"
//        customView.textAlignment = .center
//        customView.backgroundColor = .orange
//        customView.layer.cornerRadius = 8
//        customView.layer.masksToBounds = true
//
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
//            customView: customView
//        )
    }
    
    @objc func didTapButton() {
        let vc = UIViewController()
        vc.title = "View 2"
        vc.view.backgroundColor = .systemGreen
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
                                                               style: .done,
                                                               target: self,
                                                               action: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}

