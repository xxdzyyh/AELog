Pod::Spec.new do |s|

    s.name = 'AELog'
    s.version = '0.3.0'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.summary = 'Simple, lightweight and flexible debug logging framework written in Swift'

    s.homepage = 'https://github.com/tadija/AELog'
    s.author = { 'tadija' => 'tadija@me.com' }
    s.social_media_url = 'http://twitter.com/tadija'

    s.source = { :git => 'https://github.com/tadija/AELog.git', :tag => s.version }
    s.source_files = 'Sources/*.swift'

    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

    s.ios.deployment_target = '8.0'
    s.watchos.deployment_target = '2.0'
    s.tvos.deployment_target = '9.0'
    s.osx.deployment_target = '10.10'

end
