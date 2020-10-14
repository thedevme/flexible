//
//  Tabbar.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/14/20.
//

import SwiftUI

struct Tabbar: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.baseBackground
        UITabBar.appearance().barTintColor = UIColor.baseBackground
    }
    
    var body: some View {
        TabView {
            NavigationView {
                WatchNowView()
                    .navigationTitle("WELCOME, CRAIG!")
            }.tabItem {
                Image(systemName: "tv.and.hifispeaker.fill")
                    .foregroundColor(.white)
                
                Text("WATCH")
                    .custom(font: .bold, size: 24)
                    .foregroundColor(.baseLightBlue)
            }
            
            NavigationView {
                MyListView()
            }.tabItem {
                Image(systemName: "list.and.film")
                    .foregroundColor(.white)
                
                Text("MY LIST")
                    .custom(font: .bold, size: 24)
                    .foregroundColor(.baseLightBlue)
            }
            
            
            NavigationView {
                ChannelsView()
            }.tabItem {
                Image(systemName: "4k.tv")
                    .foregroundColor(.white)
                
                Text("CHANNELS")
                    .custom(font: .bold, size: 24)
                    .foregroundColor(.baseLightBlue)
            }
            
            NavigationView {
                SearchView()
            }.tabItem {
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                
                Text("SEARCH")
                    .custom(font: .bold, size: 24)
                    .foregroundColor(.baseLightBlue)
            }
            
            NavigationView {
                SettingsView()
            }.tabItem {
                Image(systemName: "gear")
                    .foregroundColor(.white)
                
                Text("SETTINGS")
                    .custom(font: .bold, size: 24)
                    .foregroundColor(.baseLightBlue)
            }
        }
        .accentColor(.baseLightBlue).navigationBarColor(.baseBackground)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
