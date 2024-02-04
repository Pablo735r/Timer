//
//  TimerViewModel.swift
//  Timer-App
//
//  Created by Pablo Amador on 3/2/24.
//

import Foundation
import SwiftUI

class TimerViewModel: ObservableObject {
    @Published var timer: TimerModel


    
    init(timer: TimerModel) {
        self.timer = timer
        
    }
    
    

    
    func startTimer() {
        guard !timer.isTimerRunning else {
            return
        }

       timer.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {  _ in
          

            withAnimation {
                self.timer.progress -= 1.0 / self.timer.selectedTimeInterval
            }

           if self.timer.progress <= 0 {
                self.resetTimer()
            }
        }

        if let timer = timer.timer {
            RunLoop.current.add(timer, forMode: .common)
        } else {
            print("Error: Timer is nil")
        }

        timer.isTimerRunning = true
    }



     func stopTimer() {
        if timer.isTimerRunning {
            timer.timer!.invalidate()
            timer.isTimerRunning = false
        }
    }

     func resetTimer() {
        stopTimer()
        timer.progress = 1.0
    }
    
}

let intervals: [Double] = stride(from: 1.0, through: 60.0, by: 1.0).map { $0 }

var sampleTimer = TimerViewModel(timer: TimerModel(progress: 1.0, isTimerRunning: false, isButtonEnabled: false, selectedTimeInterval: 60.0, timerIntervals: intervals))

