//
//  PageView.swift
//  SliderDemo (iOS)
//
//  Created by Luciano Nicolini on 08/04/2022.
//

import SwiftUI

struct PageView: View {
    var page: Page
   
    var body: some View {
        VStack(spacing: 20) {
            Image("\(page.imageURL)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                
                .background(.gray.opacity(0.10))
                .cornerRadius(10)
                .padding()
            
            Text(page.name)
                .font(.title)
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
        }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        //.samplePage describe lo que se encuentra en PageModel
        PageView(page: Page.samplePage)
    }
}
