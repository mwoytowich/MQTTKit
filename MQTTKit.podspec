Pod::Spec.new do |s|

  s.name         = "MQTTKit"
  s.version      = "0.1.0-next"
  s.summary      = "Objective-C client for MQTT 3.1"
  s.homepage     = "http://github.com/jmesnil/MQTTKit"
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author       = { "Jeff Mesnil" => "jmesnil@gmail.com" }
  s.ios.platform = :ios, '6.0'
  # for using GCD queue as Objective-C objects
  s.ios.deployment_target = "6.0"
  s.osx.platform = :osx, '10.9'
  s.source       = { :git => "https://github.com/jmesnil/MQTTKit.git", :tag => "#{s.version}" }

  s.source_files  = 'libmosquitto/*.{h,c}', 'MQTTKit/*.{h,m}'
  s.public_header_files = 'MQTTKit/MQTTKit.h'
  s.compiler_flags = '-D WITH_TLS -D WITH_THREADING'
  s.requires_arc = true

  #s.dependency 'OpenSSL-Universal', '~> 1.0'
  #s.depenedncy 'OpenSSL-Static'
end
