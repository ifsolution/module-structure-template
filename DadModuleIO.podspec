Pod::Spec.new do |s|
  s.name = "DadModuleIO"
  s.version = "0.1.0"
  s.summary = "A short description of DadModuleIO."

  s.description = <<-DESC
  TODO: Add long description of the pod here.
                  DESC

  s.homepage = "https://github.com/congncif/app-father"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "NGUYEN CHI CONG" => "congnc.if@gmail.com" }
  s.source = { :git => "git@github.com:ifsolution/DadModule.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/congncif"

  s.ios.deployment_target = "10.0"
  s.swift_versions = ["5.3", "5.4"]

  s.source_files = "IO/**/*.swift"

  s.dependency "Boardy"
end
