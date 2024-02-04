//
//  CircleView.swift
//  Timer-App
//
//  Created by Pablo Amador on 3/2/24.
//

import SwiftUI

struct CircleView: View {
    
    @ObservedObject var timerVM: TimerViewModel
    
    var body: some View {
        ZStack {
   
            Circle()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .frame(width: 350, height: 350)
            
            
            Circle()
                .trim(from: 0, to: CGFloat(timerVM.timer.progress))
                .stroke(
                    AngularGradient(gradient: Gradient(colors: [.orange]), center: .center),
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))
                .frame(width: 350, height: 350)
           
            HStack {
                
                let totalSeconds = Int(timerVM.timer.progress * timerVM.timer.selectedTimeInterval)
                let minutes = totalSeconds / 60
                let seconds = totalSeconds % 60

                Text(" \( minutes ) min : \( seconds ) s ")
                    .frame(width: 260, height: 50)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    
                
            }
         }
        }
    
}

#Preview {
    CircleView(timerVM: sampleTimer)
}
