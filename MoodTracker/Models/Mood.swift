//
//  Mood.swift
//  MoodTracker
//
//  Created by Emily Peregrine on 17/09/2018.
//  Copyright © 2018 Emily Peregrine. All rights reserved.
//

import Foundation

struct Mood {
    let name: String
    let emoji: String
    let detail: String
}

extension Mood {
    static func getSampleMoods() -> [Mood] {
        return [
            Mood(name: "Happy", emoji: "😄", detail: "Feeling generally positive"),
            Mood(name: "Sad", emoji: "☹️", detail: "Feeling Generally Sad"),
            Mood(name: "Unicorn", emoji: "🦄", detail: "Magical")
        ]
    }
}
