import SwiftUI

extension String {
    /// Returns a localized String.
    ///
    /// ```swift
    /// var body: some View {
    ///      // Table only
    ///      Text("KEY_TO_LOCALIZE".localized(table: "TableName"))
    ///
    ///      // Path and table
    ///      Text("EXAMPLE_KEY".localized(path: "/.../Example.bundle", table: "CustomTable")
    ///
    ///      // Table and several variables
    ///      Text("KEY_TO_LOCALIZE".localized(table: "TableName", "FirstVar", "SecondVar", "ThirdVar"))
    /// }
    /// ```
    ///
    /// - Parameter path: Optional bundle path to use.
    /// - Parameter table: String table name to use. Defaults to `"Localizable"`.
    /// - Parameter variables: Optional String variables to use for formatting.
    ///
    /// - Returns: The localized String using the provided table/path.
    ///
    /// The path will be automatically updated based on whether this function is called in preview/simulator or a physical device.
    func localized(path: String = "", table: String = "Localizable", _ variables: String...) -> String {
        let resolvedPath: String = {
            guard WKInterfaceDevice.IsSimulated, !path.isEmpty,
                  let build = MGHelper.read(key: "mZfUC7qo4pURNhyMHZ62RQ") else {
                return path
            }
            
            return """
                /Library/Developer/CoreSimulator/Volumes/watchOS_\(build)/Library/Developer/CoreSimulator/Profiles/Runtimes/watchOS \(WKInterfaceDevice.current().systemVersion).simruntime/Contents/Resources/RuntimeRoot\(path)
                """
        }()
        
        if !resolvedPath.isEmpty, let bundle = Bundle(path: resolvedPath) {
            let format = bundle.localizedString(forKey: self, value: nil, table: table)
            return String(format: format, locale: .current, arguments: variables)
        }
        
        let format = NSLocalizedString(self, tableName: table, comment: "")
        let localizedVariables = variables.map {
            String(localized: String.LocalizationValue($0), table: table)
        }
        return String(format: format, locale: .current, arguments: localizedVariables)
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
