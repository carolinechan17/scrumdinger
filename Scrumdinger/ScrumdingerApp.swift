//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Caroline Chan on 17/09/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
