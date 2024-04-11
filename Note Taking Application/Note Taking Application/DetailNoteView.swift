//
//  DetailNoteView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/26/24.
//

import SwiftUI

struct DetailNoteView: View{
    @Binding var title: String // to get title from ContentView
    @Binding var content: String // to get content from ContentView
    
    var body: some View{
        VStack{ // for title, content, and spacing to be together
            Spacer() // for spacing
            Spacer() // for spacing
            Spacer() // for spacing
            Spacer() // for spacing
            Text(title).bold() // to show title of note
            Spacer() // for spacing
            Text(content) // to show content of note
            Spacer() // for spacing
            Spacer() // for spacing
            Spacer() // for spacing
            Spacer() // for spacing
        } // end of VStack
    }
}

#Preview {
    DetailNoteView(title: .constant("title"), content: .constant("content")) // to have default value of title and content before notes input
}
