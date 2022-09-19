//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Caroline Chan on 19/09/22.
//

import Foundation
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self {Self()}
}
