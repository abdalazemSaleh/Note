//
//  Note+TblrExtention.swift
//  Note
//
//  Created by Abdalazem Saleh on 2022-07-19.
//

import UIKit

extension NoteController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Handel table view
    // Handel table view data sourse and delegate
    func tableViewDelegateAndDatasourse() {
        noteTable.delegate = self
        noteTable.dataSource = self
    }
    // Register Cell
    func registerCell() {
        noteTable.register(UINib(nibName: "NoteCell", bundle: nil), forCellReuseIdentifier: "NoteCell")
    }
    
    // MARK: - Table view number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.number_ofSectionsInRow()
    }
    // MARK: - Table view cell for row at
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        presenter.noteCell(tableView: tableView, atIndexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
