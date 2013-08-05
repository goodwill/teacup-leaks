class TapController < UIViewController
  stylesheet :app
  layout(:screen) do
    
  end
  
  def viewDidLoad
    super

    # self.view.backgroundColor=UIColor.whiteColor
    # 
    #     # @label= UILabel.alloc.initWithFrame(CGRectZero)
    #     # @label.text = "Taps"
    #     # @label.sizeToFit
    #     # @label.center=CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    #     # self.view.addSubview(@label)
    #     
    #     @button = UIButton.alloc.initWithFrame([[40,40],[self.view.frame.size.width-80, 100]])
    #     @button.title="Goto List"
    #     self.view.addSubview(@button)
    #     
    #     @button.when_tapped do
    #       alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)
    #       self.navigationController.pushViewController(alphabet_controller, animated: true)
    #     end
    
    self.title="Tap (#{self.navigationController.viewControllers.count})"

    rightButton= UIBarButtonItem.alloc.initWithTitle("Push", style: UIBarButtonItemStyleBordered, target: self, action: 'push')

    self.navigationItem.rightBarButtonItem = rightButton
  end
  
  

  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem=UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)
    self
  end

  def push
    alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(alphabet_controller, animated: true)
  end
end