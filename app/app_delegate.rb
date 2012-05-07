class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    
    glView = CCGLView.viewWithFrame @window.bounds,
      pixelFormat: KEAGLColorFormatRGB565,
      depthFormat: 0,
      preserveBackbuffer: false,
      sharegroup: nil,
      multiSampling: false,
      numberOfSamples: 0

    director = CCDirector.sharedDirector
    director.wantsFullScreenLayout = true
    director.displayStats = true
    director.animationInterval = 1.0/60
    director.view = glView
    director.delegate = self
    director.projection = KCCDirectorProjection2D
    director.enableRetinaDisplay true

    @navController = UINavigationController.alloc.initWithRootViewController director
    @navController.navigationBarHidden = true

    @window.addSubview @navController.view
    @window.makeKeyAndVisible

    CCTexture2D.defaultAlphaPixelFormat = KCCTexture2DPixelFormat_RGBA8888

    CCFileUtils.sharedFileUtils.setiPhoneRetinaDisplaySuffix("-hd")
    CCFileUtils.sharedFileUtils.setiPadSuffix "-ipad"
    CCFileUtils.sharedFileUtils.setiPadRetinaDisplaySuffix "-ipadhd"

    CCTexture2D.PVRImagesHavePremultipliedAlpha true

    director.pushScene WorldLayer.scene
    true
  end
end

class WorldLayer < CCLayer
  def self.scene
    scene = CCScene.node
    layer = WorldLayer.node

    scene.addChild layer
    scene
  end

  def init
    super

    @label = CCLabelTTF.labelWithString "Hello RubyMotion from Cocos!", fontName: "Gill Sans", fontSize: 18
    size = CCDirector.sharedDirector.winSize
    @label.position = [size.width / 2, size.height / 2]
    
    self.addChild @label

    self
  end
end