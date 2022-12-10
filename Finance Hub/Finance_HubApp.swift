//
//  Finance_HubApp.swift
//  Finance Hub
//
//  Created by Brunno Hofmann on 10.12.22.
//

import SwiftUI

@main
struct Finance_HubApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView().tabItem{
                    Label("", systemImage: "house.fill")
                }
                HistoricView().tabItem{
                    Label("", systemImage: "calendar")
                }
                CreateTransactionView().tabItem{
                    Label("", systemImage: "plus.square.fill")
                }
                InsightsView().tabItem{
                    Label("", systemImage: "lightbulb.fill")
                }
            }
        }
    }
}
