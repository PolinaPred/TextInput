//
//  ContentView.swift
//  TextInput
//
//  Created by Scholar on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDogs: Int = 0
    @State private var walkTime = 0
    @State private var textTitle = "Hello!"
    @State private var total = 0
    @State private var day = Date()
    
    @State private var dogs = ""
    @State private var duration = ""
    
    //let date = Date(timeIntervalSinceReferenceDate: 118800)
    
    var body: some View {
        VStack{
            Spacer()
            Text(textTitle)
                .font(.title)
            Spacer()
            Text("How many dogs do you need to walk?")
                .font(.headline)
            TextField("Number of dogs", text: $dogs)
                .multilineTextAlignment(.center)
                .font(.title)
            
            Spacer()
            Text("For how long do you walk each dog?")
                .font(.headline)
            TextField("Walk duration", text: $duration)
                .multilineTextAlignment(.center)
                .font(.title)
            Spacer()
            Text("When will you be walking your dogs?")
                .font(.headline)
            DatePicker(
                selection: $day,
                displayedComponents: [.date],
                label: { Text("Select a Date") })
            

            Spacer()
            Button("Enter"){
                numberOfDogs = Int(dogs) ?? 0
                walkTime = Int(duration) ?? 0
                total = numberOfDogs * walkTime
                textTitle = "On \(day.formatted(date: .long, time: .shortened)), it will take you \(total) to walk \(numberOfDogs) dogs!"
            }
                .font(.headline)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
