Pod::Spec.new do |s|
  s.name             = 'CurrencyKit.swift'
  s.module_name      = 'CurrencyKit'
  s.version          = '1.0'
  s.summary          = 'Currency management'

  s.homepage         = 'https://github.com/horizontalsystems/component-kit-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch' }
  s.source           = { git: 'https://github.com/rathishubham7/component-kit-ios.git', branch: "master" }
  s.social_media_url = 'http://horizontalsystems.io/'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5'

  s.source_files = 'CurrencyKit/Classes/**/*'
  s.resource_bundle = { 'CurrencyKit' => ['CurrencyKit/Assets/*.xcassets', 'CurrencyKit/Assets/*.lproj/*.strings'] }

  s.dependency 'SectionsTableView.swift', '~> 1.1'
  s.dependency 'ThemeKit.swift', '~> 0.0.1'
  s.dependency 'LanguageKit.swift', '~> 1.0'
  s.dependency 'StorageKit.swift', '~> 1.0'
  s.dependency 'RxSwift', '~> 5.0'
end
