//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Caroline Chan on 17/09/22.
//

import Foundation

struct DailyScrum {
    let title: String
    let attendees: [String]
    let lengthInMinutes: Int
    let theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Ani", "Budi", "Cindy"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Dodi", "Eli", "Finn"], lengthInMinutes: 15, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Gigi", "Hery"], lengthInMinutes: 10, theme: .poppy)
    ]
}
