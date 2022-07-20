//
//  NoteModel.swift
//  NoteApp
//
//  Created by Abdalazem Saleh on 2022-07-18.
//

import UIKit
import CoreData

class NoteModel {

    // Define Context
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    // Add new note
    func addNote(title: String, text: String) {
        // Create new note
        let newNote = Note(context: self.context)
        newNote.title = title
        newNote.text = text
        // Save data
        saveData()
    }
    // TODO: Remove note
    func removeNote(note: Note) {
        // Remove the person
        self.context.delete(note)
        // Save data
        saveData()
    }
    // Fetch nots
    func fetchNote() -> [Note] {
        var item: [Note]?
        do {
            let request = Note.fetchRequest() as NSFetchRequest<Note>
            item = try context.fetch(request)
        } catch {
            print(error.localizedDescription)
        }
        print(item!)
        return item!
    }
    // Save data
    func saveData() {
        do {
            try self.context.save()
        } catch {
            print("Error")
        }
    }

}
