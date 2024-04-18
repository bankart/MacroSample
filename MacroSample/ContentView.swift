//
//  ContentView.swift
//  MacroSample
//
//  Created by bank.art on 2/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
//        .onAppear(perform: {
//            Test.execute()
//        })
    }
}

#Preview {
    ContentView()
}


import MacroSampleCommon

protocol IMyObject {
}

@DependencyKeyConformed
struct MyObject: IMyObject {
    
}

//import MacroSampleCommon
//struct MyObject: DependencyKey {
//    
//}
