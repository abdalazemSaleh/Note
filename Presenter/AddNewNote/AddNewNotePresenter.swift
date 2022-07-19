//
//  AddNewNotePresenter.swift
//  Note
//
//  Created by Abdalazem Saleh on 2022-07-19.
//

import UIKit

class AddNewNotePresenter {
    // MARK: - About init & delegation
    private weak var view: AddNewNoteView?
    init(view: AddNewNoteView) {
        self.view = view
    }
    // MARK: - My Code
    // Variables
    let model = NoteModel()
    var nots: [Note] = []
    // Add new note
    func addNewNote(title: String, text: String) {
        model.addNote(title: title, text: text)
    }
}
