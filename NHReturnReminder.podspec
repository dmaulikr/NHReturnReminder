Pod::Spec.new do |s|
  s.name         = "NHReturnReminder"
  s.version      = "0.4"
  s.summary      = "Alert user return app"
  s.description  = <<-DESC
                    NHReturnReminder make easy to create an return reminder alert. If user don't use app in a time, it will make a local notification to notify user return app.
                   DESC
  s.homepage     = "https://github.com/huynguyencong"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Nguyen Cong Huy' => 'conghuy2012@gmail.com' }
  s.source       = { :git => "https://github.com/huynguyencong/NHReturnReminder.git", :tag => "#{s.version}"}
  s.platform     = :ios
  s.source_files = 'NHReturnReminder/*.{h,m}'
  s.requires_arc = true
end