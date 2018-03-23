Pod::Spec.new do |s|

  s.name         = "JSON"
  s.version      = "0.0.1"
  s.summary      = "A better way to deal with JSON"

  s.description  = <<-DESC
                   Painless JSON handling and model parsing using Codable
                   DESC

  s.homepage     = "https://github.com/untouchable741/JSON"
  s.license      = "MIT"
  s.author             = { "Huu Tai Vuong" => "vhuutai@gmail.com" }

  s.requires_arc = true
  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "8.0"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/untouchable741/JSON.git", :tag => s.version.to_s }
  s.source_files  = "JSON/Source/*.swift"
end
