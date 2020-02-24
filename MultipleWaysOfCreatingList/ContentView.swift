//
//  ContentView.swift
//  MultipleWaysOfCreatingList
//
//  Created by Ramill Ibragimov on 24.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // SwiftUI List
        //
        // Methods of creating list:
        //
        // 1. Static list
        First()
        //
        // 2. List View
        // Second()
        //
        // 3. ForEach View
        // Third()
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct First: View {
    var body: some View {
        List {
            Section {
                Text("row 1")
                Text("row 2")
                Text("row 3")
                Text("row 4")
                Text("row 5")
                Text("row 6")
                Text("row 7")
                Text("row 8")
                Text("row 9")
                Text("row 10")
            }
            Section {
                Text("row 11")
                Text("row 12")
            }
        }.listStyle(GroupedListStyle())
        .environment(\.horizontalSizeClass, .regular)
    }
}

struct Second: View {
    var data = ["row 1", "row 2", "row 3", "row 4", "row 5"]
    
    var body: some View {
        List(data, id: \.self) { item in
            Text(item)
        }
    }
}

struct Third: View {
    var data = ["row 1", "row 2", "row 3", "row 4", "row 5"]
    
    var body: some View {
        List() {
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}


