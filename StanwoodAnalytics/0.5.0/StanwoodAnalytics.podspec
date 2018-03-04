Pod::Spec.new do |s|
  s.name             = 'StanwoodAnalytics'
  s.version          = '0.5.0'
  s.summary          = 'StanwoodAnalytics encapsulates the frameworks Stanwood uses from various vendors used in analytics and logging.'
  s.description      = <<-DESC
A framework to encapsulate analytics and logging frameworks from Fabric, Crashlytics, Google, Firebase and BugFender.
                       DESC

  s.homepage         = 'https://github.com/stanwood/Stanwood_Analytics_iOS'
  s.license          = { :type => 'Private', :file => 'LICENSE' }
  s.author           = { 'Ronan O Ciosoig' => 'ronan.o.ciosoig@stanwood.de' }
  s.source           = { :git => 'git@github.com:stanwood/Stanwood_Analytics_iOS.git', :tag => s.version.to_s}
  
  s.ios.deployment_target = '10.0'
  s.default_subspec = 'Base'

  s.pod_target_xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Firebase $(PODS_ROOT)/FirebaseCore/Frameworks $(PODS_ROOT)/FirebaseInstanceID/Frameworks $(PODS_ROOT)/FirebaseAnalytics/Frameworks'
  }
  
  s.libraries = [
  'c++',
  'sqlite3',
  'z',
  ]
  
  s.frameworks = 'UserNotifications'
  
  s.subspec 'Core' do |ss|
      ss.source_files = 'StanwoodAnalytics/Classes/Core/'
  end
  
  s.subspec 'Base' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.dependency 'StanwoodAnalytics/Fabric'
      ss.dependency 'StanwoodAnalytics/Firebase'
  end
  
  s.subspec 'Firebase' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.dependency 'Firebase/Analytics'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/Firebase/'
      ss.frameworks = ['FirebaseCore',
      'FirebaseInstanceID',
      'FirebaseAnalytics',
      'FirebaseCoreDiagnostics',
      'FirebaseNanoPB']
  end
  
  s.subspec 'Fabric' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/Fabric/'
      ss.ios.vendored_frameworks = ['Frameworks/Crashlytics.framework',
      'Frameworks/Fabric.framework']
  end
  
  s.subspec 'BugFender' do |ss|
      ss.dependency 'BugfenderSDK', '~> 1.4'
      ss.dependency 'StanwoodAnalytics/Core'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/BugFender/'
  end
  
  s.subspec 'TestFairy' do |ss|
      ss.ios.vendored_library = 'Frameworks/libTestFairy.a'
      ss.dependency 'StanwoodAnalytics/Core'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/TestFairy/*.{swift,h,m}'
      ss.frameworks = [
      'CoreMedia',
      'CoreMotion',
      'AVFoundation',
      'SystemConfiguration',
      'OpenGLES'
      ]
  end
end
