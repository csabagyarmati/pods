#
#  p2.OAuth2
#
#  Versions reflect the Swift version they support.
#  Enjoy!
#

Pod::Spec.new do |s|
  s.name         = "OAuth2"
  s.version      = "3.0.2"
  s.summary      = "OAuth2 framework for macOS, iOS, written in Swift."
  s.description  = <<-DESC
                   OAuth2 frameworks for macOS, iOS written in Swift.

                   A flexible framework supporting standards-compliant _implicit_ and _code_ grant flows. Some
                   websites like Facebook may use slightly differring OAuth2 implementations, for those the
                   framework aims to provide specific subclasses handling these differences.

                   Start with `import OAuth2` in your source files. Code documentation is available from within
                   Xcode (ALT + click on symbols) and on [p2.github.io/OAuth2/](http://p2.github.io/OAuth2/).
                   DESC
  s.homepage     = "https://github.com/csabagyarmati/OAuth2"
  s.documentation_url = "https://github.com/csabagyarmati/OAuth2"
  s.license      = "Apache 2"
  s.author       = { "Pascal Pfiffner" => "phase.of.matter@gmail.com" }
  s.source       = { :git => "https://github.com/csabagyarmati/OAuth2.git", :branch => "feature/exchangeCodeForToken_open", :submodules => true }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.pod_target_xcconfig = { "OTHER_SWIFT_FLAGS" => "-DNO_MODULE_IMPORT -DNO_KEYCHAIN_IMPORT" }

  s.source_files = "SwiftKeychain/Keychain/*.swift", "Sources/Base/*.swift", "Sources/Flows/*.swift", "Sources/DataLoader/*.swift"
  s.ios.source_files = "Sources/iOS/*.swift"
  s.osx.source_files = "Sources/macOS/*.swift"

 #s.dependency "SwiftKeychain", "~> 1.0"
  s.ios.framework = "SafariServices"
end
