//
//  SurveyResultModel.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation


//struct SurveyResultResponse: Codable {
//    let gender: String
//    let age: Int
//    let atmosphere: String
//    let karlo_img: String
//    let up: String
//    let bottom: String
//}



// MARK: - WelcomeElement
struct SurveyResultResponse: Codable {
    let gender: String?
    let age: Int?
    let atmosphere: String?
    let karloImg: String?
    let up: String?
    let bottom: String?
}

typealias SurveyResult = [SurveyResultResponse]
