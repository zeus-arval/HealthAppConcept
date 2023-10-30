//
//  LoadingCircleBar.swift
//  HealthAppConcept
//
//  Created by Артур Валдна on 29.10.2023.
//

import SwiftUI

struct LoadingCircleBar: View {
    private let circleSpacing: CGFloat = 22
    @State private var states: [Bool] = [true, false, false]
    
    private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        HStack(spacing: circleSpacing){
            ForEach(0..<3, id: \.self){ num in
                StateCircle(firstStateColor: .white, secondStateColor: Color("Loading Gray"), isFirstState: states[num])
            }
        }
        .onReceive(timer){ _ in timerTick()}
    }
    
    func timerTick(){
        let index = states.firstIndex(of: true)!
        
        if index == 2 {
            states[index] = false
            states[0] = true
        } else {
            states[index] = false
            states[index + 1] = true
        }
    }
}

struct StateCircle: View{
    public let firstStateColor: Color
    public let secondStateColor: Color
    public let isFirstState: Bool
    
    private let size: CGFloat = 10.0

    var body: some View{
        Circle()
            .fill(isFirstState ? firstStateColor : secondStateColor)
            .frame(maxWidth: size, maxHeight: size)
            .animation(.linear, value: isFirstState)
    }
}

struct LoadingCircleBar_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCircleBar()
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(Color("LightGray"))
    }
}
