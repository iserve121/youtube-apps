//
//  ViewController.swift
//  youtube-apps
//
//  Created by A Roble on 14/10/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    
    
    @IBOutlet weak var
        tableView: UITableView!
    
    var model = Model()
    var video = [Video]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set itself as the datasource and the delegate
        tableView.dataSource = self
        tableView.delegate = self
    
        //set itself as the deletegate of the model
        model.delegate = self
        
        model.getVideos()
    }
        //Mark - Model Deletegate methods
        
        func videosFetched(_ videos: [Video]){
  
            //Set the return videos to our video property
            self.video = videos
        
        //Refresh the tableView
            tableView.reloadData()
    }

    // Mark:  - TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return video.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)

        //Configure the cell with the data
        //get the title for the video in question
        
        let title = self.video[indexPath.row].title
        
        cell.textLabel?.text = title
        //return the cell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt IndexPath: IndexPath) {
        
        
    }

}


