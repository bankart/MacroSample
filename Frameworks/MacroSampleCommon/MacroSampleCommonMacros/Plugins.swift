//
//  Plugins.swift
//  MacroSampleCommonMacros
//
//  Created by bank.art on 4/8/24.
//

import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct MacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        DependencyKeyConformedMacro.self
    ]
}
