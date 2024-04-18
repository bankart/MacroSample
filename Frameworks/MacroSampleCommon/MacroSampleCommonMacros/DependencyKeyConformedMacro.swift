//
//  DependencyKeyConformedMacro.swift
//  MacroSampleCommonMacros
//
//  Created by bank.art on 4/8/24.
//

import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct DependencyKeyConformedMacro {
    private static let conformed = "DependencyKey"
}

extension DependencyKeyConformedMacro: ExtensionMacro {
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let conformedType = "I\(type.trimmed)"
        let syntax = try ExtensionDeclSyntax(
        """
        extension \(type.trimmed): \(raw: Self.conformed) {
            public static var liveValue: \(raw: conformedType) = \(raw: type.trimmed)()
        }
        """
        )
        return [syntax]
    }
    
}
