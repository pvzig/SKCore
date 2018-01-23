Pod::Spec.new do |s|
  s.name             = "SKCore"
  s.version          = "4.1.0"
  s.summary          = "Common model objects for use in SlackKit"
  s.homepage         = "https://github.com/SlackKit/SKCore"
  s.license          = 'MIT'
  s.author           = { "Peter Zignego" => "peter@launchsoft.co" }
  s.source           = { :git => "https://github.com/SlackKit/SKCore.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pvzig'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'Sources/*.swift'  
  s.frameworks = 'Foundation'
end
