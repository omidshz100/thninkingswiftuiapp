//
//  ButtonStyleBootcamp.swift
//  ThninkingSwiftUI
//
//  Created by Omid Shojaeian Zanjani on 15/05/23.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Click Me!")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0.0, y: 10)
        }
        .padding(40)

    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
