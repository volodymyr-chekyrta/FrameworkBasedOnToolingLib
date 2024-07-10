//
//  ContentView.swift
//  FrameworkBasedOnToolingLib
//
//  Created by Volodymyr Chekyrta on 10.07.24.
//

import SwiftUI
import MyPluginForAbstraction

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            print("Test")
            let impl1 = MyPluginImplementation1()
            impl1.function1()
            impl1.function2()
            
            let impl2 = MyPluginImplementation2()
            impl2.function1()
            impl2.function2()
        }
    }
}

#Preview {
    ContentView()
}
