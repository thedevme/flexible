//
//  WatchNowView.swift
//  DesigntoSwiftUIFlexibleApp
//
//  Created by Craig Clayton on 9/2/20.
//

import SwiftUI

struct WatchNowView: View {
    
    var body: some View {
        ZStack {
            Color(.baseBackground).edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    FeaturedListView()
                    ContinueWatchingView().padding(.bottom, 40)
                    BrowseView().padding(.bottom, 20)
                }
            }
        }
        
    }
}

struct WatchNowView_Previews: PreviewProvider {
    static var previews: some View {
        WatchNowView()
    }
}
