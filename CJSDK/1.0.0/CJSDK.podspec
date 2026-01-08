 Pod::Spec.new do |s|
  s.name             = 'CJSDK'
  s.version          = '1.0.0'
  s.summary          = 'A short description of CJPayment.'
  s.description      = <<-DESC
                       TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/Alan-GitHub/pods'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alan' => '584840653@qq.com' }
  s.ios.deployment_target = '10.0'
  s.source              = { :git => 'https://github.com/Alan-GitHub/pods.git', :tag => s.version.to_s }
  
  
  # CJCore 子库
  s.subspec "CJCore" do |core|
    core.vendored_frameworks = 'CJCore.xcframework'
    core.source_files = "CJCore/Classes/**/*.{h,m,swift}"
  end
  
  # CJPayment 子库
  s.subspec "CJPayment" do |payment|
    payment.vendored_frameworks = 'CJPayment.xcframework'
    payment.source_files        = 'CJPayment/Classes/**/*'
    payment.dependency 'CJSDK/CJCore'
    
    # payment.resource_bundles = {
    #   'CJPayment' => ['CJPayment/Assets/*.png']
    # }

    # payment.public_header_files = 'Pod/Classes/**/*.h'
    # payment.frameworks = 'UIKit', 'MapKit'
    # payment.dependency 'AFNetworking', '~> 2.3'
  end

end
