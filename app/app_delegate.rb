class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window=UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    taps_controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller= UINavigationController.alloc.initWithRootViewController(taps_controller)
#    alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)
#    animate_controller=AnimateController.alloc.initWithNibName(nil, bundle: nil)
#    gradient_controller = GradientController.alloc.initWithNibName(nil, bundle: nil)


    #tab_controller= UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    #tab_controller.viewControllers = [nav_controller, alphabet_controller, animate_controller, gradient_controller]

    @window.rootViewController = nav_controller

    true
  end
end
