import Foundation
import OpenAPIRuntime
import OpenAPIURLSession

extension Client {
    /// Convenience initializer for a `Client` backed by `URLSessionTransport`,
    /// pointed at the given recipe-planner API base URL.
    ///
    /// `Client` itself, and every request/response type it uses, is generated
    /// by the `OpenAPIGenerator` build-tool plugin from `openapi.yaml` at
    /// build time — this file is the only hand-written Swift in this target.
    /// It exists both because it's genuinely convenient (a consumer doesn't
    /// need to import `OpenAPIURLSession` or construct a transport itself)
    /// and because Swift Package Manager requires at least one real source
    /// file present in a target before it will invoke a build-tool plugin
    /// for that target at all — an all-generated target isn't resolvable.
    public init(serverURL: URL) {
        self.init(serverURL: serverURL, transport: URLSessionTransport())
    }
}
