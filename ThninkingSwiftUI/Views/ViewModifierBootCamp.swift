//
//  ViewModifierBootCamp.swift
//  ThninkingSwiftUI
//
//  Created by Omid Shojaeian Zanjani on 15/05/23.
//

import SwiftUI
struct DefaultButtonViewFormatter:ViewModifier {
    var bacgroundColor:Color
    func body(content: Content) -> some View {
        content
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(bacgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}
extension View{
    func withDefualtButtonViewFormatter(bacgroundColor:Color = .blue)-> some View {
        self
            .modifier(DefaultButtonViewFormatter(bacgroundColor: bacgroundColor))
    }
}
struct ViewModifierBootCamp: View {
    var body: some View {
        VStack(spacing: 5){
            Text("Hello, World!")
                .withDefualtButtonViewFormatter()
                .font(.headline)
                .foregroundColor(Color.white)
            Text("Hello, World!")
                .withDefualtButtonViewFormatter(bacgroundColor: .red)
            Text("Hello, World!")
                .withDefualtButtonViewFormatter(bacgroundColor: .yellow)
        }
        .padding()
    }
}
struct ViewModifierBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootCamp()
    }
}
