//
//  NotePresenter.swift
//  Note
//
//  Created by Abdalazem Saleh on 2022-07-19.
//

import UIKit

class NotePresenter {
    // MARK: - About init & delegation
    private weak var view: NoteView?
    init(view: NoteView) {
        self.view = view
    }
    // MARK: - My Code
    // Variables
    let model = NoteModel()
    var nots: [Note] = []
    // Fetch Nots
    func fetchNots() {
        self.nots = model.fetchNote()
    }
    // Number of rows in section
    func number_ofSectionsInRow() -> Int {
        return nots.count
    }
    // Cell for row
    func noteCell(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as! NoteCell
        let note = nots[indexPath.row]
        cell.title.text = note.title
        cell.decription.text = note.text
        return cell
    }
}
