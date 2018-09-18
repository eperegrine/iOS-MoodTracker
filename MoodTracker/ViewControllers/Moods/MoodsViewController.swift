//
//  MoodsViewController.swift
//  MoodTracker
//
//  Created by Emily Peregrine on 17/09/2018.
//  Copyright © 2018 Emily Peregrine. All rights reserved.
//

import UIKit

fileprivate let reuseIdentifier = "MoodCell"

class MoodsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var MoodsCollectionView: UICollectionView!
    
    let moods: [Mood] = Mood.getSampleMoods()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MoodsCollectionView.delegate = self
        MoodsCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    
    //MARK: Collection View Delegate
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let vc = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? MoodsCollectionViewCell else {
            fatalError("Unrecognised cell type in moods collection view")
        }
        vc.setFrom(mood: moods[indexPath.item])
        return vc
    }
}
