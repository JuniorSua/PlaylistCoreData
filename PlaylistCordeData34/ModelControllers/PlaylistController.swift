//
//  PlaylistController.swift
//  PlaylistCordeData34
//
//  Created by Junior Suarez-Leyva on 12/1/20.
//

import Foundation
import CoreData

class PlaylistController {
    
    static let shared = PlaylistController()
    
    var playlist: [Playlist] {
        let fetchRequest: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return (try? CoreDataStack.context.fetch(fetchRequest)) ?? []
    }
    
    func createPlaylistWithName(name: String) {
        Playlist(name: name)
        saveToPersistentStore()
    }
    
    func saveToPersistentStore() {
        do {
            try CoreDataStack.context.save()
        } catch {
            print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
        }
    }
}
