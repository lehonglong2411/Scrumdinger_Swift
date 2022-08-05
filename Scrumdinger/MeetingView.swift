//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Hong Long on 29/05/2022.
//

import SwiftUI


struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 30, total: 100)
            HStack {
                VStack(alignment: .leading) {
                    Text("Second Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                    
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .stroke(lineWidth: 20)
            HStack {
                Text("Speacker 1 of 3")
                Spacer()
                Button (action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding() 
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
