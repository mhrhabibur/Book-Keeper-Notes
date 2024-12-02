//
//  ViewController.swift
//  Book Keeper & Notes
//
//  Created by Habibur Rahman on 12/2/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        
        let menuButton = UIBarButtonItem(
            title: "Setting",
            image: UIImage(
                systemName: "slider.vertical.3"
            ),
            target: self,
            action: nil,
            menu: showMenu()
        )
        navigationItem.rightBarButtonItem = menuButton
    }
    
    func showMenu()-> UIMenu {
        let setting = UIAction(title: "Setting", image: UIImage(systemName: "gearshape"), handler: {_ in print("Setting")})
        let profile = UIAction(title: "Profile", image: UIImage(systemName: "person.fill"), handler: {_ in print("Profile")})

        let menu = UIMenu(
            title: "",
            options: .displayInline,
            children: [setting, profile]
        )
        return menu
    }
    
    
    
}
