//
//  MyDateExtension.swift
//  DuoShare
//
//  Created by itthipon wiwatthanasathit on 9/23/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import Foundation

extension Date {
    
    func getStringWith(format: String) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(secondsFromGMT: 25200)
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    static func getNewDateTimeString(inputStr: String, inputFormat: String, outputFormat: String) -> String? {
        // input
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(secondsFromGMT: 25200)
        formatter.dateFormat = inputFormat
        guard let inputDate = formatter.date(from: inputStr) else {
            return nil
        }
        
        // output
        formatter.dateFormat = outputFormat
        return formatter.string(from: inputDate)
    }
    
}
