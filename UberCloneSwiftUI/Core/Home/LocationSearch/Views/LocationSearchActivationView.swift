//
//  LocationSearchActivationView.swift
//  UberCloneSwiftUI
//
//  Created by Rene Salomone on 3/13/24.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.trailing, 10)
            
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 64,
        height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .black.opacity(0.5), radius: 4))
    }
}

#Preview {
    LocationSearchActivationView()
}
