//
//  TimerButtons.swift
//  Timer-App
//
//  Created by Pablo Amador on 3/2/24.
//

import SwiftUI

struct TimerButtons: View {
    
    @ObservedObject var timerVM: TimerViewModel
    
    var body: some View {
        
        HStack(spacing: 50) {
            
            Button(action: {
                if timerVM.timer.isTimerRunning {
                    timerVM.stopTimer()
                    
                } else {
                    timerVM.startTimer()
                   
                }
                
            }) {
                ButtonView(title: timerVM.timer.isTimerRunning ? "Stop Timer" : "Start Timer")

            }
     
            
            Button(action: {
                
                timerVM.resetTimer()
                
            }) {
                ButtonView(title: "Reset Timer")

            }
                

        }
    }
}

#Preview {
    TimerButtons(timerVM: sampleTimer)
}
 
