//
//  Song+Convenience.swift
//  PlaylistCordeData34
//
//  Created by Junior Suarez-Leyva on 12/1/20.
//

import Foundation

extension Song {
    
    convenience init(name: String, artist: String, playlist: Playlist) {
        
        self.init(context: CoreDataStack.context)
        self.songName       = name
        self.artistName     = artist
        self.playlist       = playlist
    }
}
