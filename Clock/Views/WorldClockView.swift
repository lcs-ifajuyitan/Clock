//
//  WorldClockView.swift
//  Clock
//
//  Created by ☆ on 23/02/2026.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("World Clock")
                    .navigationTitle("World Clock")
                    .toolbar {
                        
                        ToolbarItem(placement: .topBarLeading) {
                            
                            Button("Edit") {
                                // Does nothing right now
                            }
                            
                        }
                        
                        ToolbarItem(placement: .topBarLeading) {
                            
                            Button {
                                // Does nothing right now
                            } label: {
                                Image(systemName: "plus")
                            }
                            
                        }
                        
                    }
            }
            
        }
    }
}

#Preview {
    LandingView()
}
