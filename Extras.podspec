Pod::Spec.new do |s|
  s.name         = 'Extras'
  s.version      = '1.0.3'
  s.ios.deployment_target = '10.0'
  s.summary      = 'Just some extras..'
  s.description  = <<-DESC
     Some extensions for personal use.
  DESC
  s.homepage           = 'https://github.com/roberthein/Extras'
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'Robert-Hein Hooijmans' => 'rh.hooijmans@gmail.com' }
  s.social_media_url   = 'https://twitter.com/roberthein'
  s.source             = { :git => 'https://github.com/roberthein/Extras.git', :tag => s.version.to_s }
  s.source_files       = 'Extras/Classes/**/*.{swift}'
end