//
//  UI_84App.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/24.
//

import SwiftUI

@main
struct UI_84App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

extension NSTextField{
    
    open override var focusRingType: NSFocusRingType{
        
        get{.none}
        set{}
    }
    
}
