#
# Be sure to run `pod lib lint XBUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XBUtils'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XBUtils.  Base Utiles eg. NSString AES DES'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A long description of XBUtils. Base Utiles eg. NSString AES DES.
                       DESC

  s.homepage         = 'https://github.com/alexfeng/XBUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fengxiangbo' => 'fengxiangbo@thinkjoy.cn' }
  s.source           = { :git => 'https://github.com/alexfeng/XBUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'XBUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XBUtils' => ['XBUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
