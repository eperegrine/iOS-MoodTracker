//
//  MoodsCollectionViewCell.swift
//  MoodTracker
//
//  Created by Emily Peregrine on 17/09/2018.
//  Copyright © 2018 Emily Peregrine. All rights reserved.
//

import UIKit

class MoodsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    var mood: Mood?
    
    func setFrom(mood: Mood) {
        self.mood = mood
        EmojiLabel.text = mood.emoji
        NameLabel.text = mood.name
    }
}
