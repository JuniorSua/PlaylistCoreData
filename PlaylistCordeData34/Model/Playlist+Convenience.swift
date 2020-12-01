//
//  Playlist+Convenience.swift
//  PlaylistCordeData34
//
//  Created by Junior Suarez-Leyva on 12/1/20.
//

import Foundation

extension Playlist {
    
    convenience init(name: String) {
        
        self.init(context: CoreDataStack.context)
        self.name = name
    }
}
