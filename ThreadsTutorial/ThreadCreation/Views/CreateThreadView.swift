//
//  CreateThreadView.swift
//  ThreadsTutorial
//
//  Created by Milos on 19. 8. 2023..
//

import SwiftUI

struct CreateThreadView: View {
    @State private var newThread = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("charles_leclerc")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread", text: $newThread, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !newThread.isEmpty {
                        Button {
                            newThread = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                        
                    }
                }
                
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post") {
                        
                    }
                    .disabled(newThread.isEmpty)
                    .opacity(newThread.isEmpty ? 0.5 : 1.0)
                    .fontWeight(.semibold)
                    
                }
            }
            .font(.subheadline)
            .foregroundColor(.black)
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CreateThreadView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThreadView()
    }
}
