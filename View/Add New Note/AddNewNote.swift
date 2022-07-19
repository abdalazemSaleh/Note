//
//  AddNewNote.swift
//  Note
//
//  Created by Abdalazem Saleh on 2022-07-19.
//

import UIKit

class AddNewNote: UIViewController, AddNewNoteView {
    
    // MARK: - Variables
    var presenter: AddNewNotePresenter!
    var delegate : reloadTableView?
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = AddNewNotePresenter(view: self)
        handelView()
    }
    // MARK: - IBOutlet
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var descriptionTextView: UITextView!
    @IBOutlet var myView: UIView!
    // MARK: - IBAction
    @IBAction func submitButton(_ sender: UIButton) {
        presenter.addNewNote(title: titleTextField.text ?? "", text: descriptionTextView.text ?? "")
        self.delegate?.reloadData()
        self.dismiss(animated: true, completion: nil)
    }
    // MARK: - Handel View
    func handelView() {
//        myView.layer.cornerRadius = 32
        titleTextField.layer.cornerRadius = 8
        descriptionTextView.layer.cornerRadius = 8
    }
    
}
