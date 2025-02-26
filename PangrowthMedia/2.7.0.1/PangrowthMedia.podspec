Pod::Spec.new do |s|
  s.name             = 'PangrowthMedia'
  s.version          = '2.7.0.1'
  s.summary          = 'LCDSDK is a SDK from Bytedance providing content service.'
  s.description      = <<-DESC
  Bytedance provides content which include video、feed、video card etc.
                       DESC
  
  s.license          = { :type => 'MIT', :file => 'PangrowthMedia/LICENSE' }
  s.author           = { 'yuxuri' => 'yuxuri@bytedance.com' }

  s.homepage         = 'https://www.pangle.cn/'
  s.source           = { :http => 'https://sf3-fe-tos.pglstatp-toutiao.com/obj/pangle-empower/pangrowth-media-static/2.7.0.1/PangrowthMedia-2.7.0.1.zip' }
  s.ios.deployment_target = '9.0'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => ['-lObjC'] }

  s.frameworks = 'MetalKit', 'CoreMotion', 'SystemConfiguration', 'OpenAL', 'VideoToolbox'
  s.libraries = 'c++', 'z', 'iconv', 'xml2', 'bz2', 'c++abi'
  
  s.ios.dependency 'RangersAPM/Core', '>= 2.0.5'
  s.ios.dependency 'RangersAPM/Public', '>= 2.0.5'
  s.ios.dependency 'RangersAPM/Crash', '>= 2.0.5'
  s.ios.dependency 'RangersAPM/HMD', '>= 2.0.5'
  s.ios.dependency 'RangersAPM/EventMonitor', '>= 2.0.5'
  s.ios.dependency 'RangersAppLog/Core', '~> 5.6'
  s.ios.dependency 'RangersAppLog/Log', '~> 5.6'
  s.ios.dependency 'RangersAppLog/Host/CN', '~> 5.6'

  s.vendored_frameworks = ['PangrowthMedia/LCDSDK.framework']
  s.resources = ['PangrowthMedia/LCDSDK.bundle', 'PangrowthMedia/ttplayer.metallib']
  s.preserve_paths = 'PangrowthMedia/*.framework', 'PangrowthMedia/*.bundle', 'PangrowthMedia/ttplayer.metallib'

  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
end
