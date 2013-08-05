Teacup::Stylesheet.new :app do
  style :screen,
    backgroundColor: :white

  style :table,
    frame: [[0,0], ['100%','100%']]
  
  style :rounded_single_line_blue_button,
      width: '100%-20',
      height: 50,
#      backgroundImage: CommonUIUtility.imageFromColor(:blue),
      layer: {
        cornerRadius: 8
      },
      clipsToBounds: true

end