//
//  MenuView.swift
//  DesigntoSwiftUIFlexibleApp
//
//  Created by Craig Clayton on 9/2/20.
//

import SwiftUI

struct MenuView: View {

    enum NavigationItem {
        case watchnow
        case list
        case channels
        case search
        case settings
    }
    
    @State private var selection: Set<NavigationItem> = [.watchnow]
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.baseBackground
        UITableViewCell.appearance().selectionStyle = .none
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().isHidden = false
    }
    
    var body: some View {
        List(selection: $selection) {
            NavigationLink(destination: WatchNowView()) {
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                        .foregroundColor(.white)
                    
                    Text("WATCH")
                        .custom(font: .bold, size: 24)
                        .foregroundColor(.baseLightBlue)
                }
            }
            .tag(NavigationItem.watchnow)

            NavigationLink(destination: MyListView()) {
                HStack {
                    Image(systemName: "list.and.film")
                        .foregroundColor(.white)
                    
                    Text("MY LIST")
                        .custom(font: .bold, size: 24)
                        .foregroundColor(.baseLightBlue)
                }
            }
            .tag(NavigationItem.list)

            NavigationLink(destination: ChannelsView()) {
                HStack {
                    Image(systemName: "4k.tv")
                        .foregroundColor(.white)
                    
                    Text("CHANNELS")
                        .custom(font: .bold, size: 24)
                        .foregroundColor(.baseLightBlue)
                }
            }
            .tag(NavigationItem.channels)

            NavigationLink(destination: SearchView()) {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                    
                    Text("SEARCH")
                        .custom(font: .bold, size: 24)
                        .foregroundColor(.baseLightBlue)
                }
            }
            .tag(NavigationItem.search)
            
            NavigationLink(destination: SettingsView()) {
                HStack {
                    Image(systemName: "gear")
                        .foregroundColor(.white)
                    
                    Text("SETTINGS")
                        .custom(font: .bold, size: 24)
                        .foregroundColor(.baseLightBlue)
                }
            }
            .tag(NavigationItem.settings)
            
        }
        .navigationTitle("WATCH")
        .navigationBarColor(.baseCardBackground)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
