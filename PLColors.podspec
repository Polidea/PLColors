Pod::Spec.new do |s|
  s.name             = "PLColors"
  s.version          = "1.0.0"
  s.summary          = "Creating UIColor objects based on hexadecimal color representation."
  s.description      = <<-DESC
                       PLColors is an UIColor category that provides methods that allows you to create UIColor objects
                       based on hexadecimal color representation, similar to that used in HTML or CSS language.
                       DESC
  s.homepage         = "https://github.com/Polidea/PLColors"
  s.license          = 'MIT'
  s.author           = { "Michał Laskowski" => "michal.laskowski@polidea.com" }
  s.source           = { :git => "https://github.com/Polidea/PLColors.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'PLColors' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
