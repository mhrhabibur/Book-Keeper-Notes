//
//  NotesViewController.swift
//  Book Keeper & Notes
//
//  Created by Habibur Rahman on 12/2/24.
//

import UIKit

class NotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Notes"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    
    @objc func addNote() {
        print("Note Added.")
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddNoteVC") as! AddNoteViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
