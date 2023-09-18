//
//  SurveyResultModel.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation


struct SurveyResultResponse: Codable {
//    let data: LoginData?
//    let message: String
//    let result: String
    
    let gender: String
    let age: Int
    let atmosphere: String
    let karlo_img: String
    let up: String
    let bottom: String
}

//struct LoginData: Codable {
//    let accountName: String
//    let id: String
//    let accessToken: String
//    let refreshToken: String
//    let role: String
//}
