//
//  ContentView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/2/20.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        MainView()
            .onAppear {
                let largeTitleAttrs = [
                    NSAttributedString.Key.foregroundColor: UIColor.baseLightGray,
                    NSAttributedString.Key.font: UIFont(name: CustomFont.bold.rawValue, size: 34)!
                ]
                
                UINavigationBar.appearance().largeTitleTextAttributes = largeTitleAttrs
                
                let titleAttrs = [
                    NSAttributedString.Key.foregroundColor: UIColor.baseLightGray,
                    NSAttributedString.Key.font: UIFont(name: CustomFont.bold.rawValue, size: 24)!
                ]
                
                UINavigationBar.appearance().titleTextAttributes = titleAttrs
            }
        #else
        Sidebar()
            .frame(minWidth: 1000, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
