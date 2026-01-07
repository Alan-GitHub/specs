Pod::Spec.new do |s|
  s.name             = 'CJPayment'
  s.version          = '0.1.0'
  s.summary          = 'CJPayment SDK as a binary XCFramework.'
  s.description      = <<-DESC
CJPayment 是一个支付 SDK，提供支付相关功能。
该 Podspec 使用二进制分发方式，仅暴露编译好的 XCFramework，不包含源码。
  DESC

  s.homepage         = 'https://github.com/Alan-GitHub/pods'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alan' => '584840653@qq.com' }

  # 指向存放 XCFramework 的仓库和版本 tag
  s.source           = { :git => 'https://github.com/Alan-GitHub/pods.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  # 使用二进制分发，不再暴露源码
  s.vendored_frameworks = 'CJPayment.xcframework'

  # 如果框架依赖系统库，可以在这里声明
  # s.frameworks = 'UIKit'
end

