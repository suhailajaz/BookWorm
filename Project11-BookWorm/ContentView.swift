//
//  ContentView.swift
//  Project11-BookWorm
//
//  Created by suhail on 19/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var w
    @Query var books: [Book]
    
    @State private var showingAddScreen = false

    var body: some View {
        NavigationStack{
            List{
                ForEach(books){ book in
                    
                    HStack{
                        EmojiRatingView(rating: book.rating)
                            .font(.largeTitle)
                        
                        VStack(alignment: .leading){
                            Text(book.title)
                                .font(.headline)
                            Text(book.author)
                                .foregroundStyle(.secondary)
                        }
                    }
                    
                }
            }
                .navigationTitle("BookWorm")
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add Book", systemImage: "plus"){
                            showingAddScreen.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen){
                    AddBookView()
                }
        }
    }
}
#Preview {
    ContentView()
}
