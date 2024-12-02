//
//  LendHistoryViewController.swift
//  Book Keeper & Notes
//
//  Created by Habibur Rahman on 12/2/24.
//

import UIKit

class LendHistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Lend History"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPerson))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    
    @objc func addPerson() {
        print("Person Added.")
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddPersonVC") as! AddPersonViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
