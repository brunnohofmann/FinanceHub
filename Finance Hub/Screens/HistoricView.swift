//
//  Historic.swift
//  Finance Hub
//
//  Created by Brunno Hofmann on 10.12.22.
//

import SwiftUI

struct HistoricView: View {
    var body: some View {
        List{
            Section(header: Text("2022").font(.headline)){
                Label("December", systemImage: "calendar")
                Label("December", systemImage: "calendar")
                Label("December", systemImage: "calendar")
                Label("December", systemImage: "calendar")
            }
        }
        .navigationBarTitle("Historic")
    }
}

struct Historic_Previews: PreviewProvider {
    static var previews: some View {
        HistoricView()
    }
}
