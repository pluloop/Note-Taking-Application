//
//  NewNoteView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/26/24.
//

import SwiftUI

struct NewNoteView: View{
    @State var note: Note = Note(title: "Title", content: "") // to make note (display title and content later)
    @Binding var notes: [Note] // to store notes and display in ContentView
    
    var body: some View{
        VStack{ // to have title, inputs, and buttons on separate lines
            HStack{ // for title and spacing together
                Spacer() // for spacing
                Spacer() // for spacing
                Text("New Note").bold() // to display title
                Spacer() // for spacing
                Spacer() // for spacing
                Spacer() // for spacing
                Spacer() // for spacing
                Spacer() // for spacing
            } // end of HStack
            
            TextField("Title", text: $note.title) // for title of note input
                .padding() // swift position
                .frame(width: 200, height: 50) // for size of input area
            .background(Color.gray) // for color of input area
            
            TextField("Content", text: $note.content, onCommit: { // for content of note input
                note.content = note.content // add content typed in input to Note
            }) // end of TextField
            .padding() // swift position
            .frame(width: 200, height: 400) // for size of input area
            .background(Color.gray) // for color of input area

            Button("Add Note"){ // button to add note
                notes.append(note) // add note to list of notes for tracking
            } // end of Button
            .padding() // swift position
            .background(Color.blue) // color of button
            .foregroundColor(.white) // color of button text
            .cornerRadius(8) // radius of button
        } // end of VStack
    }
}

#Preview {
    NewNoteView(notes: .constant([])) // to have default value for list "notes" so no errors before input
}
