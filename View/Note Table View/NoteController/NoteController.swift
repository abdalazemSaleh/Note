//
//  NoteController.swift
//  NoteApp
//
//  Created by Abdalazem Saleh on 2022-07-18.
//

import UIKit

class NoteController: UIViewController, NoteView, reloadTableView {
    
    // MARK: - Variables
    var presenter: NotePresenter!
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = NotePresenter(view: self)
        presenter.fetchNots()
        handelView()
        tableViewDelegateAndDatasourse()
        registerCell()
    }
    // MARK: - IBOutlet
    @IBOutlet var noteTable: UITableView!
    // MARK: - IBAction
    @IBAction func addNote(_ sender: UIBarButtonItem) {
        let VC = AddNewNote()
        VC.delegate = self
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
        self.present(VC, animated: true, completion: nil)
    }
    // MARK: - Handel View
    func handelView() {
    }
    // MARK: - Reload data after add new note
    func reloadData() {
        // Re-fetch
        presenter.fetchNots()
        // Reload data
        self.noteTable.reloadData()
    }
}
