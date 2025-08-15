/*
Abstract:
An extension of String to add a localization function based on NSLocalizedString.
*/

import SwiftUI

extension String {
    /// Returns a localized String given a table name and optional multi-argument values.
    ///
    /// ```swift
    /// var body: some View {
    ///      Text("KEY_TO_LOCALIZE".localize(table: "TableName")) // Table only
    ///      Text("KEY_TO_LOCALIZE".localize(table: "TableName", "VARIABLE")) // Table and a single variable
    ///      Toggle("KEY_TO_LOCALIZE".localize(table: "TableName"), isOn: .constant(true)) // Table only
    ///      Toggle("KEY_TO_LOCALIZE".localize(table: "TableName", "VARIABLE"), isOn: .constant(true)) // Table and a single variable
    ///      Toggle("KEY_TO_LOCALIZE".localize(table: "TableName", "FIRST_VARIALBE", "SECOND_VARIABLE", "THIRD_VARIABLE"), isOn: .constant(true)) // Table and several variables
    /// }
    /// ```
    ///
    /// - Parameter table: The String table name to use.
    /// - Parameter variables: The optional multi-parameter Strings to display as a variable or as variables.
    /// - Returns: The localized String using the provided table.
    func localize(table: String = "Localizable", _ variables: String...) -> String {
        let format = NSLocalizedString(self, tableName: table, comment: "")
        let localizedVariables = variables.map { String(localized: String.LocalizationValue($0), table: table) }
        
        return String(format: format, locale: .current, arguments: localizedVariables)
    }
    
    // MARK: - Experimental
    @MainActor
    func localized(path: String, table: String = "Localizable", _ variables: CVarArg...) -> String {
        var newPath = ""

        if WKInterfaceDevice.IsSimulated {
            guard let newBuild = MGHelper.read(key: "mZfUC7qo4pURNhyMHZ62RQ") else {
                return self
            }
            newPath = "/Library/Developer/CoreSimulator/Volumes/watchOS_\(newBuild)/Library/Developer/CoreSimulator/Profiles/Runtimes/watchOS \(WKInterfaceDevice.current().systemVersion).simruntime/Contents/Resources/RuntimeRoot\(path)"
        } else {
            newPath = path
        }

        if let bundle = Bundle(path: newPath) {
            let format = bundle.localizedString(forKey: self, value: nil, table: table)
            return String(format: format, locale: .current, arguments: variables)
        }

        return self
    }
}

extension WKInterfaceDevice {
    static let IsSimulated: Bool = {
        if let answer = MGHelper.read(key: "ulMliLomP737aAOJ/w/evA") { // IsSimulator key
            return Bool(answer)!
        }

        // Fallback
        return ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] != nil
    }()
}
