//
//  Sidebar.swift
//  DesigntoSwiftUIFlexibleApp
//
//  Created by Craig Clayton on 9/2/20.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            #if os(iOS)
                MenuView()
                    .listStyle(SidebarListStyle())
            #else
                MenuView()
            #endif
            
            WatchNowView()
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
