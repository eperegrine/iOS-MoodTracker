//
//  MoodLogTableViewCell.swift
//  MoodTracker
//
//  Created by Emily Peregrine on 17/09/2018.
//  Copyright © 2018 Emily Peregrine. All rights reserved.
//

import UIKit

class MoodLogTableViewCell: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var RatingLabel: UILabel!
    @IBOutlet weak var DateTimeLabel: UILabel!
    
    func setMood(from mood: MoodLog) {
        EmojiLabel.text = mood.mood.emoji
        RatingLabel.text = mood.ratingOutOfTen
        DateTimeLabel.text = mood.dateString
    }

}
