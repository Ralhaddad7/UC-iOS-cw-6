//
//  ContentView.swift
//  cw61
//
//  Created by Ritaj Alhaddad on 19/09/2022.
//

import SwiftUI

struct StudentsDetails: Identifiable {
    let id = UUID()
    let name : String
    let age : Int
    let year : Int
}

struct ContentView: View {
    var students = [
        StudentsDetails(name: "sara" , age: 20 ,year: 2),
        StudentsDetails(name: "noura" , age: 22 , year: 4),
        StudentsDetails(name: "rashed" , age: 18 , year: 1 )
    ]
    
    var body: some View {
        VStack{
            Image("civil card")
                .resizable()
                .frame(width: 200, height: 200)
            
            Text("سجل الطالب")
                    .font(.largeTitle)
            
            List(students){
                student in
                VStack {
                    HStack{
                        Text("name")
                        Text(student.name)
            
                    }
                    HStack{
                        Text("age")
                        Text("\(student.age)")
            
                    }
                    HStack{
                        Text("year")
                        Text("\(student.year)")
            
                    }
                }
                
            }
            
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
