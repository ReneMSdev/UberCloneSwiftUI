//
//  UberCloneSwiftUIApp.swift
//  UberCloneSwiftUI
//
//  Created by Rene Salomone on 3/13/24.
//

import SwiftUI

@main
struct UberCloneSwiftUIApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                //environmentObject allows use of singular instance of LocationSearchViewModel()
                .environmentObject(locationViewModel)
        }
    }
}
