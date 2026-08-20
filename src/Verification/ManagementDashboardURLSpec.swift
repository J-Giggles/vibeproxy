import Foundation

@main
struct ManagementDashboardURLSpec {
    static func main() {
        let actual = ManagementDashboardURL.make(configuredPort: 8317)?.absoluteString
        let expected = "http://127.0.0.1:8317/management.html"

        guard actual == expected else {
            fputs("configured backend port should determine the dashboard URL: expected \(expected), got \(actual ?? "nil")\n", stderr)
            Foundation.exit(EXIT_FAILURE)
        }

        print("ManagementDashboardURLSpec: all checks passed")
    }
}
