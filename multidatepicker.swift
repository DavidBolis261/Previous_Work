//
//  ContentView.swift
//  youtube
//
//  Created by David Bolis on 30/1/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.calendar) var calendar
    @State var dates : Set<DateComponents> = []
    var body: some View {
        VStack {
            Text("Number of dates: \(dates.count)")
            Text(summary)
            MultiDatePicker("Select A Date", selection: $dates, in: Date.now...)
                .frame(height:300)
        }
        .padding()
        
    }
    var summary: String {
            dates.compactMap { components in
                calendar.date(from: components)?.formatted(date: .long, time: .omitted)
            }.formatted()
        }
    
}

#Preview {
    ContentView()
}
