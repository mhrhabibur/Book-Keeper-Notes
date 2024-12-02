//
//  LibraryViewController.swift
//  Book Keeper & Notes
//
//  Created by Habibur Rahman on 12/2/24.
//

import UIKit

class LibraryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Library"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBook))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    
    @objc func addBook() {
        print("Book Added.")
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddBookVC") as! AddBookViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
