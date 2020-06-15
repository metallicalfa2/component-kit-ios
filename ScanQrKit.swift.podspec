Pod::Spec.new do |s|
  s.name             = 'ScanQrKit.swift'
  s.module_name      = 'ScanQrKit'
  s.version          = '1.0'
  s.summary          = 'Scan QR view'

  s.homepage         = 'https://github.com/horizontalsystems/component-kit-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch' }
  s.source           = { git: 'https://github.com/rathishubham7/component-kit-ios.git', branch: 'master'}
  s.social_media_url = 'http://horizontalsystems.io/'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5'

  s.source_files = 'ScanQrKit/Classes/**/*'
  s.resource_bundle = { 'ScanQrKit' => ['ScanQrKit/Assets/*.xcassets', 'ScanQrKit/Assets/*.lproj/*.strings'] }

  s.dependency 'UIExtensions.swift', '~> 1.1'
  s.dependency 'ThemeKit.swift', '~> 0.0.1'
  s.dependency 'LanguageKit.swift', '~> 1.0'
end
