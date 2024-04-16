//
//  Macros.swift
//  MacroSampleCommon
//
//  Created by bank.art on 4/8/24.
//

@attached(extension, conformances: DependencyKey)
public macro DependencyKeyConformed() = #externalMacro(module: "MacroSampleCommonMacros", type: "DependencyKeyConformedMacro")
