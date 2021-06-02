Pod::Spec.new do |s|
  s.name = "__DAD__"
  s.version = "0.1.0"
  s.summary = "A short description of __DAD__."

  s.description = <<-DESC
TODO: Add long description of the pod here.
                  DESC

  s.homepage = "https://github.com/congncif/app-father"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "NGUYEN CHI CONG" => "congnc.if@gmail.com" }
  s.source = { :git => "git@github.com:ifsolution/__DAD__.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/congncif"

  s.ios.deployment_target = "10.0"
  s.swift_versions = ["5.3", "5.4"]

  # s.static_framework = true

  s.source_files = "Sources/**/*.swift"
  # s.resources = "Sources/**/*.{xib,storyboard,strings,xcassets}"

  s.dependency "__DAD__IO"
  s.dependency "DadFoundation"
  # s.dependency "ViewStateCore"

  s.dependency "SiFUtilities"

  # s.dependency "Firebase/Storage"
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/Firebase/CoreOnly/Sources"' }
end
