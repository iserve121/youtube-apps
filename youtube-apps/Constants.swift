//
//  Constants.swift
//  youtube-apps
//
//  Created by A Roble on 14/10/2021.
//

import Foundation


struct Constants {
    
    static var API_KEY = "AIzaSyCMpXMK3jykqstbiS_o9C0mmQLh9nnxqxI"
    static var PLAYLIST_ID = "UUi3SVQgYgPiGVfU78FKgxcA"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

    static var VIDEOCELL_ID = "VideoCell"
}


