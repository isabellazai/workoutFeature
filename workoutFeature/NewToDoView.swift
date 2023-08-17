//
//  NewToDoView.swift
//  workoutFeature
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct NewToDoView: View {
    
    
    //In Iteration 2, add @Environment here
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    
    var body: some View {
        VStack {
            Text("Workout Title")
                
                .font(.system(size: 30))
            //Add Text View containing "Task title" here
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            
            TextField("Enter the description", text: $title)
                .frame(height: 45.0)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                    .fontWeight(.light)
                    
                        }
            
            //Add a padding modifier
            
            .padding()
            
            //Add Button here, delete any code in the action and with the text "Add"
            
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, isImportant: self.isImportant)
              }) {
                Text("Add")
                    
                    .foregroundColor(Color.white)
                    .frame(width: 50.0, height: 25.0)
                    .background(.blue)
                    .cornerRadius(30)
                
            }
            
            //Add a padding modifier
            
            .padding()
        
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false,
                    toDoItems: .constant([]), showNewTask: .constant(true)
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_
       )
    }
}

