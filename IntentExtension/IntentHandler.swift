//
//  IntentHandler.swift
//  IntentExtension
//
//  Created by Mateusz Ligus on 04/11/2021.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        if intent as? IntentIntent != nil {
            return IntentIntentHandler()
        } else {
            fatalError("Unhandled Intent error : \(intent)")
        }
    }
}
