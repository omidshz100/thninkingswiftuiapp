//
//  ButtonStyleBootcamp.swift
//  ThninkingSwiftUI
//
//  Created by Omid Shojaeian Zanjani on 15/05/23.
//

import SwiftUI

struct ButtonStylableStyle:ButtonStyle{
    let scaledAmount: CGFloat
    init(scaledAmount: CGFloat = 0.9) {
        self.scaledAmount = scaledAmount
    }
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaledAmount:1.0)
            //.brightness(configuration.isPressed ? 0.2:0.0)
            .opacity(configuration.isPressed ? 0.8:1.0)
    }
}

extension View {
    func withPressableStyle(scaleAmount:CGFloat = 0.9)-> some View {
        // here I removed the self, because Xcode understand buttonStyle is a modifier added to the view to generate another
        buttonStyle(ButtonStylableStyle(scaledAmount: scaleAmount))
    }
}
struct ButtonStyleBootcamp: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Click Me!")
                .font(.headline)
                .withDefualtButtonViewFormatter()
                .foregroundColor(Color.white)
        }
        //.buttonStyle(ButtonStylableStyle(scaledAmount: 0.5))
        .withPressableStyle(scaleAmount: 1.5)
        .padding(40)

    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
