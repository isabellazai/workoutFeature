//
//  ContentView.swift
//  workoutFeature
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textWorkout = ""
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    
    let workouts = ["Lunges", "Go for a run", "Burpees", "Goblet Squats", "Sit Ups", "Forearm Plank", "Wall sit", "Jumping Jacks","Side Plank", "Leg Raises", "15 Minute Yoga Session", "Russian Twists", "Push Ups"]
    
    var body: some View {
        VStack {
          
            HStack {
                Text("Exercise")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    
                Spacer()
                Button(action:{
                    self.showNewTask = true})
                {
                    Text("+")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        
                }
            }
            .padding()
          
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                    
                }
                .onDelete {
                    (indexSet) in self.toDoItems.remove(atOffsets: indexSet)
                }
            }
            .listStyle(.plain)
            if showNewTask {
                NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
            }
            
            
            Text("Workout Generator")
                .font(.title)
                .fontWeight(.bold)
            
            Button("Generate") {
                func pickWorkout() -> String {
                    let random = Int.random(in: 0..<12)
                    let workout = workouts[random]
                    
                    return workout
                }
                
                textWorkout = pickWorkout()
                //print(randomWorkout)
            }
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Spacer()
                .frame(height: 68.001)
            
            Text(textWorkout)
                .font(.title)
            
            Spacer()
                .frame(height: 100)
        }
            //In Iteration 2, add the deleteTask function here
           // func delete(at offsets: IndexSet) {
             //   toDoItems.remove(atOffsets: offsets)
            }
        }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
 

