//
//  About.swift
//  Bruh Button
//
//  Created by Іван Потієнко on 19.05.2024.
//

import SwiftUI
let nsObject: AnyObject? = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as AnyObject

let bnsObject: AnyObject? = Bundle.main.infoDictionary!["CFBundleVersion"] as AnyObject
struct About: View {
    var body: some View {
        let version = nsObject as! String
        let build = bnsObject as! String
        VStack {
            Text("Hi, this app was created just for fun, also for upgrade and learn SwiftUI\nIf you want me to add any new feature just create an Issue for this repo and I`ll try😊")
                .padding()
                .multilineTextAlignment(.center)
            Spacer()
            Text("version \(version)\nbuild \(build)")
                .multilineTextAlignment(.center)
                .font(.caption2)
                .padding()
            
        }
    }
}

#Preview {
    About()
}
