//
//  ContentView.swift
//  Codecov-test-project
//
//  Created by Gerard, Stefan on 26.10.20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentVM = ContentViewModel()

    var body: some View {
        VStack {
            Text("Hello, \(contentVM.title.isEmpty ? "world" : contentVM.title)!")
            Button("Click Me!") {
                contentVM.loadTitle()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
