//
//  GlobalEnumerations.swift
//  EnumerationExplorer
//
//  Created by Kennedy Karimi on 31/12/2024.
//

import SwiftUI

struct GlobalEnumerations {
    enum Views: Int, CaseIterable { //Conforming to Int means all cases have Integer values. CaseIterable means you can iterate through the enum with a ForEach.
        case profile = 0, settings, contact_us //The "= 0" isn't necessary. It'll still begin from 0 even  if ommitted, but that's how you control what Integer value we start iterating form if needed. e.g. "= 100"
        
        var title: String { //Computed property.
            switch self {
            case .profile:
                return "Profile"
            case .settings:
                return "Settings"
            case .contact_us:
                return "Contact Us"
            }
        }
    }
    
    enum Views2: Int { //No CaseIterable means we can't iterate through the enum with a ForEach, but we can still access the Int values of each case with the property '.rawValue'.
        case about_us = 10, privacy_policy, terms_of_service
    }
    
    enum Gender: String { //No CaseIterable means we can't iterate through the enum with a ForEach, but we can still access the String values of each case with the property '.rawValue'.
        case male = "Male", female = "Female", other = "Other", default_value = ""
    }
}
