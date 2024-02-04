//
//  TimerView.swift
//  Timer-App
//
//  Created by Pablo Amador on 2/2/24.
//

import SwiftUI

struct TimerView: View {

    @ObservedObject var timerVM: TimerViewModel
    
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                
                    CircleView(timerVM: timerVM)
                    .padding()
                
                HStack {
                   
                    SelectTimeView(title: "Select time")
                        .padding(.bottom, 30)
                    
                    
                    PickerView(timerVM: timerVM)
                        .padding(.bottom, 30)
                    
                }
                
                TimerButtons(timerVM: timerVM)
          }
       }

    }
}


#Preview {
    TimerView(timerVM: sampleTimer)
}
