//
//  Implementation.swift
//
//
//  Created by Volodymyr Chekyrta on 10.07.24.
//

import Foundation
import ReusableToolingLib

public class MyPluginImplementation1 : AbstractionFromToolingLib1 {
    
    public init() {
        
    }
    
    public func function1() {
        print("function1 from MyPluginImplementation1")
    }
    
    public func function2() {
        print("function2 from MyPluginImplementation1")
    }
}

public class MyPluginImplementation2 : AbstractionFromToolingLib2 {
    
    public init() {
        
    }
    
    public func function1() {
        print("function2 from MyPluginImplementation2")
    }
    
    @MainActor
    public func function2() {
        print("function2 from MyPluginImplementation2")
        
        print("Network Request")
        
        Task {
            await NetworkTool().sendRequest()
        }
    }
}
