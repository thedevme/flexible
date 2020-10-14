//
//  MainView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/15/20.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            Color(.baseBackground).edgesIgnoringSafeArea(.all)
            
            if horizontalSizeClass == .compact {
                Tabbar()
            } else {
                Sidebar()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
