//
//  AnyTransitionBootCamp.swift
//  ThninkingSwiftUI
//
//  Created by Omid Shojaeian Zanjani on 15/05/23.
//

import SwiftUI

struct RotateViewModifier:ViewModifier{
    let rotation: Double
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
    }
}

extension AnyTransition{
    static var rotating:AnyTransition {
        return AnyTransition.modifier(active: RotateViewModifier(rotation: 180), identity: RotateViewModifier(rotation: 0))
    }

}
struct AnyTransitionBootCamp: View {
    @State private var showRectangle:Bool = false
    var body: some View {
        VStack{
            Spacer()
            if showRectangle{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(AnyTransition.rotating.animation(.easeOut))
            }
            Spacer()
            Text("Click Me!")
                .withDefualtButtonViewFormatter()
                .padding(.horizontal, 40)
                .onTapGesture {
                    withAnimation(.easeOut) {
                        showRectangle.toggle()
                    }
                }
        }
    }
}

struct AnyTransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnyTransitionBootCamp()
    }
}
