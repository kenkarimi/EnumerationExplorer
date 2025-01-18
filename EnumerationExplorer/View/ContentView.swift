//
//  ContentView.swift
//  EnumerationExplorer
//
//  Created by Kennedy Karimi on 31/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myGender: GlobalEnumerations.Gender = .default_value
    @State private var myMothersGender: GlobalEnumerations.Gender = .default_value
    @State private var myFathersGender: GlobalEnumerations.Gender = .default_value
    @State private var myBrothersGender: GlobalEnumerations.Gender = .default_value
    @State private var maleSerializedValueFromDB: Any = "Male" //Male
    @State private var femaleSerializedValueFromDB: Any = "Female" //Female
    @State private var otherSerializedValueFromDB: Any = "Other" //Other
    
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
        .onAppear {
            
            
            myGender = GlobalEnumerations.Gender(rawValue: maleSerializedValueFromDB as! String) ?? .default_value //We type-cast the serialized value from Any to String. We also have to provide a default if we don't want myGender to be an optional since it's not a guarantee that whatever serialized value we get from the database matches a raw value case in our enum.
            myFathersGender = GlobalEnumerations.Gender(rawValue: maleSerializedValueFromDB as! String) ?? .default_value
            myMothersGender = GlobalEnumerations.Gender(rawValue: femaleSerializedValueFromDB as! String) ?? .default_value
            myBrothersGender = GlobalEnumerations.Gender(rawValue: maleSerializedValueFromDB as! String) ?? .default_value
            
            if myGender == myFathersGender, myGender == myBrothersGender {
                print("We're all \(myGender.rawValue). Mom is \(myMothersGender.rawValue)")
            } else {
                print("Not all of us are male. Personally, I'm \(myGender.rawValue). My mom is \(myMothersGender.rawValue)")
            }
        }
    }
}

#Preview {
    ContentView()
}
