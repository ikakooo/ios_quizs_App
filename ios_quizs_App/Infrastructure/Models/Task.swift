//
//  Task.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import Foundation

struct Task{
    var id:Int?
    var question:String?
    var answer_I:String?
    var answer_II:String?
    var answer_III:String?
    var answer_IV:String?
    var correct:ANS?
    var selected:ANS?
}
enum ANS:String{
    case I="I"
    case II="II"
    case III="III"
    case IV="IV"
}
