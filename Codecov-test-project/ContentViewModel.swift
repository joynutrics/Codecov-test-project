//
//  ContentViewModel.swift
//  Codecov-test-project
//
//  Created by Gerard, Stefan on 26.10.20.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var title = ""

    func loadTitle() {
        title = "Codecov"
    }
}
