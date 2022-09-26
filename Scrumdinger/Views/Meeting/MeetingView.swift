//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Caroline Chan on 17/09/22.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)
            VStack {
                ProgressView(value: 20, total: 100)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Second elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.bottomhalf.filled")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Second remaining")
                            .font(.caption)
                        Label("600", systemImage: "hourglass.tophalf.filled")
                    }
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
                
                Circle()
                    .strokeBorder(lineWidth: 24)
                
                HStack {
                    Text("Speaker 1 of 3")
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next speaker")
                }
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}