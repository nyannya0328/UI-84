//
//  BlurView.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/24.
//

import SwiftUI

struct BlurView: NSViewRepresentable {
    func makeNSView(context: Context) -> NSVisualEffectView {
        
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
        
    }
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        
    }
    
}

