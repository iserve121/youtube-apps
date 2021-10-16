//
//  Response.swift
//  youtube-apps
//
//  Created by A Roble on 14/10/2021.
//

import Foundation


struct Response: Decodable {
    
    var items:[Video]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
        
    }
    
    init (from decoder: Decoder) throws {
        
      let contianer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try contianer.decode([Video].self, forKey: .items)
        
    }
}
