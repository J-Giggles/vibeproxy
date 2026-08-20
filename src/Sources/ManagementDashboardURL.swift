import Foundation

enum ManagementDashboardURL {
    static func make(configuredPort: Int) -> URL? {
        guard (1...65_535).contains(configuredPort) else {
            return nil
        }
        return URL(string: "http://localhost:\(configuredPort)/management.html")
    }
}
