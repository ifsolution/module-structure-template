Pod::Spec.new do |s|
  s.name = "__DAD__Plugins"
  s.version = "0.1.0"
  s.summary = "A short description of __DAD__."

  s.description = <<-DESC
TODO: Add long description of the pod here.
                  DESC

  s.homepage = "https://github.com/ifsolution"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "[iF] Solution" => "solution.if@gmail.com" }
  s.source = { :git => "https://github.com/ifsolution/__DAD__.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/congncif"

  s.ios.deployment_target = "11.0"
  s.swift_version = "5"

  # s.static_framework = true

  s.source_files = "Sources/**/*.swift"
  s.resources = "Sources/**/*.{xib,storyboard,strings,xcassets}"

  s.dependency "__DAD__"

  s.dependency "Boardy/ModulePlugin"
  s.dependency "SiFUtilities"
  
  # s.dependency "SwiftMessages"
  # s.dependency "Localize-Swift/LocalizeSwiftCore"

  # s.dependency "Firebase/Storage"
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/Firebase/CoreOnly/Sources"' }
end
