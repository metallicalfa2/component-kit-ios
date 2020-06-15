Pod::Spec.new do |s|
  s.name             = 'PinKit.swift'
  s.module_name      = 'PinKit'
  s.version          = '1.0'
  s.summary          = 'Pin components'

  s.homepage         = 'https://github.com/horizontalsystems/component-kit-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch' }
  s.source           = { git: 'https://github.com/rathishubham7/component-kit-ios.git', branch: 'master'}
  s.social_media_url = 'http://horizontalsystems.io/'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5'

  s.source_files = 'PinKit/Classes/**/*'
  s.resource_bundle = { 'PinKit' => ['PinKit/Assets/*.xcassets', 'PinKit/Assets/*.lproj/*.strings'] }

  s.dependency 'UIExtensions.swift', '~> 1.1'
  s.dependency 'ThemeKit.swift', '~> 0.0.1'
  s.dependency 'LanguageKit.swift', '~> 1.0'
  s.dependency 'StorageKit.swift', '~> 1.0'
  s.dependency 'RxSwift'
end
