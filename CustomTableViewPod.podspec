

Pod::Spec.new do |s|

 

  s.name         = "CustomTableViewPod"
  s.version      = "1.0.0"
  s.summary      = "A TableView DataSource Pod"

  s.description  = "A tableview data source pod with custom cells which can download image icons and provide a nice UI and UX"

  s.homepage     = "https://github.com/vallal7"


  s.license      = "MIT"

  s.author             = { "ganesas" => "gashwin@live.com" }

  s.platform     = :ios, "10.0"

 
  s.source       = { :git => 'https://github.com/vallal7/CustomTableViewPod' , :tag => "1.0.0" }


  
  s.source_files  = "CustomTableViewPodProject/*.{h,m}"
 
 
 end
