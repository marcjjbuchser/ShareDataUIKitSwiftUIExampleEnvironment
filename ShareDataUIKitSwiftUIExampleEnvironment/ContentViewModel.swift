//
//  ContentViewModel.swift
//  ShareDataUIKitSwiftUIExampleEnvironment
//
//  Created by Marc Buchser on 2023-02-15.
//

import Foundation


struct Content : Identifiable {
    var id: String = UUID().uuidString
    var title: String
}

class ContentViewModel : ObservableObject {
    
    @Published private(set) var contents: [Content] = [Content(title: "Preview")]
    
    @discardableResult
    func generateContent() -> Content {
        print(#function)
        let newContent = Content(title: generateRandomTitle())
        contents.append(newContent)
        return newContent
    }

    func generateRandomTitle() -> String {
        return ["Summer sun","Spring edition","Fall inbetween","Winter wonderland"].randomElement()!
    }
}
