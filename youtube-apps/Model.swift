//
//  Model.swift
//  youtube-apps
//
//  Created by A Roble on 14/10/2021.
//

import Foundation



class Model {
    
    func getVideos(){
        
        // Create a URL object
        let url = URL(string: Constants.API_KEY)
        
        guard url != nil else {
            return
        }
        
        //Get a URLSession object
        let session = URLSession.shared
        
        //Get a data task from the URLSession object
        let dataTask = session.dataTask (with: url!) { (data, response, error) in
        
            //check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            // parsing the data into video object
        }
            //kick off the task
        dataTask.resume()
    }
}
