//
//  ContentView.swift
//  EnumerationExplorer
//
//  Created by Kennedy Karimi on 31/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                //Views has to be extending CaseIterable to make .allCases available & to enable iteration.
                ForEach(GlobalEnumerations.Views.allCases, id: \.self) { view in
                    Text("\(view.title)(\(view.rawValue))") //rawValue is how you get the int value of this particular case.
                        .font(Font.system(size: 14, weight: .semibold))
                }
            }
            
            HStack(spacing: 20) {
                Text("About Us: \(GlobalEnumerations.Views2.about_us.rawValue)")
                    .font(Font.system(size: 14, weight: .semibold))
                Text("Privacy Policy: \(GlobalEnumerations.Views2.privacy_policy.rawValue)")
                    .font(Font.system(size: 14, weight: .semibold))
                Text("Terms of Service: \(GlobalEnumerations.Views2.terms_of_service.rawValue)")
                    .font(Font.system(size: 14, weight: .semibold))
            }
            
            HStack(spacing: 20) {
                Text("\(GlobalEnumerations.Gender.male.rawValue)")
                    .font(Font.system(size: 14, weight: .semibold))
                Text("\(GlobalEnumerations.Gender.female.rawValue)")
                    .font(Font.system(size: 14, weight: .semibold))
                Text("\(GlobalEnumerations.Gender.other.rawValue)")
                    .font(Font.system(size: 14, weight: .semibold))
            }
        } //VStack
    }
}

#Preview {
    ContentView()
}
