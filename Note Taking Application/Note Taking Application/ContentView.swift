//
//  ContentView.swift
//  Note Taking Application
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct Note{ // to have a blueprint of notes
    var title: String // name of note
    var content: String // notes
}

struct ContentView: View {
    @State var notes: [Note] = [] // to track all notes
    
    var body: some View {
        NavigationView{ // to switch pages
            VStack{ // for "Notes" to be on top and "Add Task" to be bottom
                HStack{ // to have "Notes" and spaces around it
                    Spacer() // for spacing
                    Text("Notes").bold() // displaying text to notify user that below it are notes
                        .font(.system(size: 40)) // make text of title bigger
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                    Spacer() // for spacing
                } // end of HStack
                
                List{ // for going through list "notes"
                    ForEach(notes.indices, id: \.self) { note in // to go through all notes
                        NavigationLink(destination: DetailNoteView(title: $notes[note].title, content: $notes[note].content)) { // to go to page to see individual notes closer
                            VStack{ // to display title on top and content bottom
                                HStack{ // to have title and spacing next to each other
                                    Text(notes[note].title).bold() // title of note displayed
                                    Spacer() // for spacing
                                } // end of HStack
                                HStack{ // to have content and spacing enxt to each other
                                    Text(notes[note].content) // content of note displayed
                                    Spacer() // for spacing
                                } // end of HStack
                            } // end of VStack
                        } // end of NavigationLink
                    } // end of ForEach
                } // end of List

                NavigationLink(destination: NewNoteView(notes: $notes)){ // to send to page that allows adding new notes
                    ZStack{ // to have blue border and text on same area
                        Rectangle() // for decorations (blue area)
                            .background(Color.blue) // color of area
                            .frame(height: 75) // size of area
                        Text("Add Task") // text for user to know to press to go to page that adds notes
                            .foregroundColor(.white) // make text white for visibility
                            .font(.system(size: 27)) // size of text
                    } // end of ZStack
                } // end of NavigationLink
            } // end of VStack
        } // end of NavigationView
    }
}

#Preview {
    ContentView()
}
