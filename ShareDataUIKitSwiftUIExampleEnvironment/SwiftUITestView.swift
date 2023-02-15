//
//  SwiftUITestView.swift
//  ShareDataUIKitSwiftUIExampleEnvironment
//
//  Created by Marc Buchser on 2023-02-15.
//

import SwiftUI

struct SwiftUITestView: View {
    
    @EnvironmentObject var contentViewModel : ContentViewModel

    var body: some View {
        
        List(contentViewModel.contents){ content in
            Text(content.title)
        }.listStyle(.insetGrouped)
        Text("Content Count: \(contentViewModel.contents.count)")
        
        Button("Add content"){
            addContent()
        }.buttonStyle(.borderedProminent)
    }
    func addContent(){
        contentViewModel.generateContent()
    }
}

struct SwiftUITestView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITestView().environmentObject(ContentViewModel())
    }
}
