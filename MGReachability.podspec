

Pod::Spec.new do |s|


  s.name         = "MGReachability"
  s.version      = "0.0.2"
  s.summary      = "Network to determine."

  s.homepage     = "https://github.com/Maling1255/MGReachability"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "maling" => "maling@amberweather.com" }

  s.platform     = :ios, "9.0"


  s.source       = { :git => "https://github.com/Maling1255/MGReachability.git", :tag => "0.0.2" }

  s.source_files  = "MGReachability/*.{h,m}"

  #s.public_header_files = "MGReachability/MGReachability.h",


  s.requires_arc = true

end
