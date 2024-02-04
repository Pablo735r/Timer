//
//  TimerModel.swift
//  Timer-App
//
//  Created by Pablo Amador on 3/2/24.
//

import Foundation

struct TimerModel {
    var progress: Double = 1.0
    var isTimerRunning = false
    var isButtonEnabled = false
    var selectedTimeInterval: Double = 60.0 // Default time interval in seconds
    var timer: Timer?
    var timerIntervals: [Double] = []
    
}
