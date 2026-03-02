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
                
                ExtractedView(timeZoneOffset: "+0", city: "Ottawa", time24h: "07:35")
                ExtractedView(timeZoneOffset: "+6", city: "Paris", time24h: "13:35")
                ExtractedView(timeZoneOffset: "+16", city: "Canberra", time24h: "23:35")

                
                    
            }
            .navigationTitle("World Clock")
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button("Edit") {
                        // Does nothing right now
                    }
                    
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    
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

#Preview {
    LandingView()
}

struct ExtractedView: View {
    
    let timeZoneOffset: String
    let city: String
    let time24h: String
    
    var body: some View {
        //Ottawa
        HStack {
            //Left side
            VStack(alignment: .leading) {
                Text("Today,\(timeZoneOffset)HRS")
                Text(city)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            
            Spacer()
            
            // Right Side
            Text(time24h)
                .font(.system(size: 64.0, weight: .thin, design: .default ))
        }
    }
}


// struct ExtractedView: View{
   // var body: some View{
       // code
  //  }
//}
