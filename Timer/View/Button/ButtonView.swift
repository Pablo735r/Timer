//
//  ButtonView.swift
//  Timer-App
//
//  Created by Pablo Amador on 3/2/24.
//

import SwiftUI

struct ButtonView: View {
    
    var title: String
    
    var body: some View {
        
        Text(title)
            .frame(width: 110, height: 30)
            .background(Color(.systemOrange))
            .foregroundColor(.white)
            .font(.system(size: 15))
            .bold()
            .cornerRadius(8)
    }
}

#Preview {
    ButtonView(title: "Start")
}
