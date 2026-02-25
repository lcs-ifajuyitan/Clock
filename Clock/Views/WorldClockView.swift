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
                
                ExtractedView()
                ExtractedView()
                ExtractedView()

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

struct ExtractedView: View {
    var body: some View {
        //Ottawa
        HStack {
            //Left side
            VStack {
                Text("Today,+0HRS ")
                Text("Ottawa")
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            
            Spacer()
            
            // Right Side
            Text("6:35")
                .font(.system(size: 64.0, weight: .thin, design: .default ))
            Text("AM")
                .font(.system(.largeTitle, design: .default, weight: .thin))
        }
    }
}
