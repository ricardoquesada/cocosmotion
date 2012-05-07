class WorldLayer < CCLayer
  def self.scene
    scene = CCScene.node
    layer = WorldLayer.node

    scene.addChild layer
    scene
  end

  def init
    super

    @label = CCLabelTTF.labelWithString "Hello Cocos2D from RubyMotion!", fontName: "Gill Sans", fontSize: 18
    size = CCDirector.sharedDirector.winSize
    @label.position = [200, 200]
    
    self.addChild @label

    self
  end
end