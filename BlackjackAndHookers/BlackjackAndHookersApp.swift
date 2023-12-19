//
//  BlackjackAndHookersApp.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import SwiftUI

@main
struct BlackjackAndHookersApp: App {
    
    @StateObject var viewmodel = BlackjackGameViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewmodel:viewmodel)
        }
    }
}
