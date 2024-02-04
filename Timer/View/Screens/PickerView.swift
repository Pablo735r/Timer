//
//  PickerView.swift
//  Timer
//
//  Created by Pablo Amador on 3/2/24.
//

import SwiftUI

struct PickerView: View {
    
    @ObservedObject var timerVM: TimerViewModel
    
    var body: some View {
        
        Picker("Select Time", selection: $timerVM.timer.selectedTimeInterval) {
            ForEach(timerVM.timer.timerIntervals, id: \.self) { interval in
                
                Text("\(Int(interval)) min")
                    .tag(interval * 60)
                    .foregroundStyle(.white)
                    .bold()
                    .font(.system(size: 20))
                
            }
        }
        .pickerStyle(WheelPickerStyle())
        .padding(-20)
    }
}

#Preview {
    PickerView(timerVM: sampleTimer)
}
