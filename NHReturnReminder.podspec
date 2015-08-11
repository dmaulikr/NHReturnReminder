Pod::Spec.new do |s|
  s.name         = "NHReturnReminder"
  s.version      = "0.1"
  s.summary      = "Alert user return app"
  s.description  = <<-DESC
                    NHReturnReminder make easy to create an return reminder alert
                   DESC
  s.homepage     = "https://github.com/huynguyencong"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Nguyen Cong Huy' => 'conghuy2012@gmail.com' }
  s.source       = { :git => "https://github.com/huynguyencong/NHReturnReminder.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.source_files = 'NHReturnReminder/*.{h,m}'
  s.requires_arc = true
end