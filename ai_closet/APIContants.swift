//
//  APIContants.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation

struct APIConstants {
    // MARK: -  Base URL
    static let baseURL = "https://c12f-115-91-214-23.ngrok.io"
    
    // MARK: - Feature URL
    static let surveyResultURL = baseURL + "/users"
    
    static let surveyResultURL_1 = baseURL + "/{남자}"
}

