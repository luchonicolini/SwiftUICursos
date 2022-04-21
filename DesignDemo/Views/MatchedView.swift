//
//  MatchedView.swift
//  DesignDemo (iOS)
//
//  Created by Luciano Nicolini on 19/04/2022.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    
    
    var body: some View {
        ScrollView {
            ZStack {
                if !show {
            
                } else {
                  
                }
            }
        }
    }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
