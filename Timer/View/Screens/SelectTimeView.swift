//
//  SelectTimeView.swift
//  Timer
//
//  Created by Pablo Amador on 3/2/24.
//

import SwiftUI

struct SelectTimeView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(Color(.white))
            .bold()
            .font(.system(size: 20))
            .padding(.horizontal, 40)
            
    }
}

#Preview {
    SelectTimeView(title: "Select time")
}
