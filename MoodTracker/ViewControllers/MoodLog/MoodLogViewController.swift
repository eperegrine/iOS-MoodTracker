//
//  MoodLogViewController.swift
//  MoodTracker
//
//  Created by Emily Peregrine on 17/09/2018.
//  Copyright © 2018 Emily Peregrine. All rights reserved.
//

import UIKit

fileprivate let reuseableIdentifier = "MoodLogCell"

class MoodLogViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //Outlets
    @IBOutlet weak var MoodTableView: UITableView!
    
    let moodsLogs: [MoodLog] = MoodLog.getSampleLogs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MoodTableView.estimatedRowHeight = 100
        MoodTableView.delegate = self
        MoodTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moodsLogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let vc = tableView.dequeueReusableCell(withIdentifier: reuseableIdentifier, for: indexPath) as? MoodLogTableViewCell else {
            fatalError("Dequed cell is not TableViewCell")
        }
        vc.setMood(from: getLog(from: indexPath))
        return vc
    }
    
    func getLog(from ip: IndexPath) -> MoodLog {
        return moodsLogs[ip.item]
    }

}
