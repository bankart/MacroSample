//
//  Macros.swift
//  MacroSampleCommon
//
//  Created by bank.art on 4/8/24.
//

@attached(extension, conformances: DependencyKey, names: named(liveValue))
public macro DependencyKeyConformed() = #externalMacro(module: "MacroSampleCommonMacros", type: "DependencyKeyConformedMacro")
