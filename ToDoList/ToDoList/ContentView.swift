//
//  ContentView.swift
//  ToDoList
//
//  Created by 上森拓翔 on 2024/09/09.
//

import SwiftUI

struct TaskData: Identifiable{
    var title: String
    var completed: Bool
    var id = UUID()
}

struct ContentView: View {
//    let taskData = ["ジョギングをする" , "散歩をする" , "一年生2人目決める" , "不正をなくす" , "不正を暴く"]
    @State var taskData = [
        TaskData(title: "ジョギングする" , completed: false),
        TaskData(title: "散歩をする" , completed: false),
        TaskData(title: "一年生2人目決める" , completed: false),
        TaskData(title: "不正をなくす" , completed: false),
        TaskData(title: "不正を暴く" , completed: false)
    ]
    
    var body: some View {
        NavigationStack{
            List(0..<taskData.count , id:\.self){index in
                Button{
                    taskData[index].completed.toggle()
                }label:{
                    HStack{
                        Image(systemName: taskData[index].completed ? "checkmark.circle.fill" : "circle")
//                        if taskData[index].completed{
//                            Image(systemName: "checkmark.circle.fill")
//                        }
//                        else{
//                            Image(systemName: "circle")
//                        }
                        Text(taskData[index].title)
                    }.foregroundColor(.primary)
                }
            }
            .navigationTitle("ToDoList")
        }
    }
}

#Preview {
    ContentView()
}
