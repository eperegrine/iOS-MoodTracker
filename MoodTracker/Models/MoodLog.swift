//
//  MoodLog.swift
//  MoodTracker
//
//  Created by Emily Peregrine on 17/09/2018.
//  Copyright © 2018 Emily Peregrine. All rights reserved.
//

import Foundation

struct MoodLog {
    let mood: Mood
    let rating: Int8
    let description: String?
    let datetime: Date
    
    var ratingOutOfTen: String {
        return "\(rating)/10"
    }
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a '-' dd/MM/YYYY"
        return dateFormatter.string(from: self.datetime)
    }
    
    static func getSampleLogs() -> [MoodLog] {
        let moods = Mood.getSampleMoods()
        return [
            MoodLog(mood: moods[0], rating: 8, description: nil, datetime: Date()),
            MoodLog(mood: moods[1], rating: 4, description: nil, datetime: Date()),
            MoodLog(mood: moods[2], rating: 10, description: "I felt magical", datetime: Date())
        ]
    }
}
