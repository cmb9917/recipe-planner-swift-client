# RecipePlannerAPI

A generated Swift client for the [recipe-planner](https://github.com/cmb9917/recipe-planner) API, built with [swift-openapi-generator](https://github.com/apple/swift-openapi-generator).

No Swift code is committed here — `Sources/RecipePlannerAPI/openapi.yaml` is the only source of truth. Swift Package Manager regenerates the client's types and `Client` struct at build time via the `OpenAPIGenerator` build-tool plugin.

## Adding to an iOS project

In Xcode: File > Add Package Dependencies, and enter:

    https://github.com/cmb9917/recipe-planner-swift-client

Or in `Package.swift`:

```swift
.package(url: "https://github.com/cmb9917/recipe-planner-swift-client", from: "0.1.0")
```

## What this package does NOT cover

Generating and providing the API client is the whole scope of this package. Bearer-token storage, attachment, and refresh against the generated client (Keychain, a custom `ClientMiddleware`, etc.) is an iOS-app-architecture decision left to whichever app consumes this package.

## Cutting a new release

From a local clone of the main [recipe-planner](https://github.com/cmb9917/recipe-planner) repo, with this repo cloned as a sibling directory (`../recipe-planner-swift-client`):

    npm run publish:swift-sdk -- <version>   # e.g. 0.2.0

This regenerates `openapi.yaml`, copies it here, commits, and tags `v<version>` — but does **not** push. Review the diff in this repo, then push manually:

    git push --follow-tags

## Versioning

Still `0.x` — the API surface is actively being built out and there's no consumer yet to protect from breaking changes. Bump the minor version for additive endpoint changes, patch for fixes. Once the API surface stabilizes, cut `1.0.0`.
