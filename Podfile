source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!
inhibit_all_warnings!

target 'APP' do
    pod 'RxSwift'
    pod 'Alamofire', '4.7.3'
    pod 'Moya', '11.0.2'
    pod 'SwiftyJSON', '4.2.0'
    pod 'HandyJSON'
    pod 'SnapKit', '4.0.1'
    pod 'Kingfisher', '4.10.1'
    pod 'SwiftyUserDefaults', '3.0.1'
    pod "ESTabBarController-swift"
    pod 'IQKeyboardManagerSwift', '6.2.0'
    pod 'MJRefresh', '3.1.15.7'
    pod 'EmptyDataSet-Swift', '4.2.0'
    pod 'Realm', '3.11.1'
    pod 'FSCalendar'
    pod 'JXCategoryView'
    pod 'AloeStackView'
    pod 'SwiftyAttributes', '5.0.0'               # 用于属性字符串的Swifty API
    pod 'PKHUD', '5.2.0'                          # 适用于iOS 8的基于Swift的Apple HUD
    pod 'Hue', '3.0.1'                            # Hue是您需要的一体化着色实用程序
    pod 'Hero', '1.4.0'                           # Hero是一个用于构建iOS视图控制器转换的库
    pod 'NotificationBannerSwift', '1.8.0'        # 在iOS中显示高度可自定义的应用通知横幅的最简单方法
    pod 'Spring', :git => 'https://github.com/MengTo/Spring.git'# 一个简化Swift中iOS动画的库
    pod 'KeychainAccess', '3.1.2'                 # 轻量级 Keychain 封装，支持 TouchID 与 Keychain 整合
    pod "SkeletonView"                            # 等待骨架（未更新）
    pod "ViewAnimator"                            # iOS UIView动画的库
    pod "Gemini"                                  # 用于iOS的丰富的基于滚动的动画框架
    pod 'SwipeCellKit'                            # 滑动cell（未更新）
    pod 'LTMorphingLabel', '0.5.8'                # UILabel的优美变形效果
    pod 'Toolbar', '0.5.0'                        # 自动布局工具栏
    pod 'Whisper', :git => 'git@github.com:freeubi/Whisper.git', :branch => 'swift-4.2-support'
    pod 'SwiftDate', '5.0.13'                     # 日期处理
    pod 'CryptoSwift', '0.13.0'                   # 加密
    pod 'PhoneNumberKit', '2.5.0'
    pod 'Schedule', '1.0.0'                       # Schedule它可以让你用难以置信的友好语法执行定时任务
    pod 'SwiftEntryKit', '0.8.4'                  # iOS的横幅
    pod 'Charts', '3.2.1'                         # 图表
    pod 'SwiftTheme', '0.4.3'
    pod 'CocoaDebug', :configurations => ['Debug']
    pod 'XCGLogger'

    #   pod 'EZSwiftExtensions'                      # 提供了一系列对于 Swift 标准库、方法与 UIKit 的扩展
    #   pod 'WeScan'                                 # 轻松地为您的iOS应用添加扫描功能（未更新）
    #   pod 'Whisper', '6.0.2'                       # Whisper是一个使显示消息和应用内通知的任务变得简单的组件
end

post_install do |installer|
    # 提高 pod 库编译速度
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_COMPILATION_MODE'] = 'wholemodule'
            if config.name == 'Debug'
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
            else
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Osize'
            end
        end
    end
end
