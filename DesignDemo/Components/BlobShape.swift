//
//  BlobShape.swift
//  CardViewDemo (iOS)
//
//  Created by Luciano Nicolini on 13/04/2022.
//

import SwiftUI

struct MyCustomShape: View {
    var body: some View {
        BlobShape()
        .frame(width: 400, height: 414)
        .foregroundStyle(.linearGradient(colors: [.orange,.red], startPoint: .topLeading, endPoint: .bottomTrailing))

    }
    
}

struct MyCustomShape_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomShape()
    }
}


struct BlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9923*width, y: 0.42593*height))
        path.addCurve(to: CGPoint(x: 0.6355*width, y: height), control1: CGPoint(x: 0.92554*width, y: 0.77749*height), control2: CGPoint(x: 0.91864*width, y: height))
        path.addCurve(to: CGPoint(x: 0.08995*width, y: 0.60171*height), control1: CGPoint(x: 0.35237*width, y: height), control2: CGPoint(x: 0.2695*width, y: 0.77304*height))
        path.addCurve(to: CGPoint(x: 0.34086*width, y: 0.06324*height), control1: CGPoint(x: -0.0896*width, y: 0.43038*height), control2: CGPoint(x: 0.00248*width, y: 0.23012*height))
        path.addCurve(to: CGPoint(x: 0.9923*width, y: 0.42593*height), control1: CGPoint(x: 0.67924*width, y: -0.10364*height), control2: CGPoint(x: 1.05906*width, y: 0.07436*height))
        path.closeSubpath()
        return path
    }
}
