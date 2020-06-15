Pod::Spec.new do |s|
  s.name             = 'ThemeKit.swift'
  s.module_name      = 'ThemeKit'
  s.version          = '0.0.1'
  s.summary          = 'UI themes and components'

  s.homepage         = 'https://github.com/rathishubham7/component-kit-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch' }
  s.source           = { git: 'https://github.com/rathishubham7/component-kit-ios.git', tag: s.version }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5'

  s.source_files = 'ThemeKit/Classes/**/*'
  s.resource_bundle = { 'ThemeKit' => 'ThemeKit/Assets/*.xcassets' }

  s.dependency 'UIExtensions.swift', '~> 1.1'
  s.dependency 'HUD.swift', '~> 1.2'
  s.dependency 'SnapKit', '~> 5.0'
end
