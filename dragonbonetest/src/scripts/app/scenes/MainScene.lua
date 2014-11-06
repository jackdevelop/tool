local SpriteButton = require("app.base.SpriteButton");

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	
	 -- mapLayer 包含地图的整个视图
--    self.mapLayer = display.newNode()
--    self.mapLayer:align(display.LEFT_BOTTOM, 0, 0)
--    self:addChild(self.mapLayer)
--    
--    self.bgSprite_ = display.newSprite("map/map.png")
--    self.bgSprite_:align(display.LEFT_BOTTOM, 0, 0)
--    self.mapLayer:addChild(self.bgSprite_)--背景地图
    
    
--	self:addChild(display.newSprite("map/map.png",display.cx,display.cy));
	
	--测试原始的骨骼动画
--     	local BaseDragonBone = require("app.base.BaseDragonBone");
--	local baseDragonBone = BaseDragonBone.new(nil,self);
--	local param = {
--		dragonName = "ccs/dragon/dragon/Dragon", --swf名称
--		fps = 24 , --帧数
--	}
--	local rect = nil;
--	baseDragonBone:initData(param);
--	baseDragonBone:initView();
--	baseDragonBone:registerEventScript(function()
--		print("点击了");
--	end,rect)
--	baseDragonBone:setPosition(display.cx,display.cy)
--	baseDragonBone:play("walk") --播放的帧标签



	
	--测试商店骨骼动画
	local BaseDragonBone = require("app.base.BaseDragonBone");
	local baseDragonBone = BaseDragonBone.new(nil,self);
	local param = {
		dragonName = "ccs/dragon/shop/shopEffect", --swf名称
		fps = 24 , --帧数
	}
	local rect = nil;
	baseDragonBone:initData(param);
	baseDragonBone:initView();
	baseDragonBone:registerEventScript(function()
		print("点击了");
	end,rect)
	baseDragonBone:setPosition(display.cx,display.cy)
	baseDragonBone:play("ziyuan_open") --播放的帧标签
	 
	
	
	
	
	
	
	
	
	
--	--测试cocostuiod的动画  并包含粒子
--	CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		"ccs/dragon/aniani/NewAnimationTest0.png",
--		"ccs/dragon/aniani/NewAnimationTest0.plist",
--		"ccs/dragon/aniani/NewAnimationTest.ExportJson"
--	) --资源加载
--	 local armature = CCArmature:create("NewAnimationTest") --动画的名称
--    armature:getAnimation():play("Animation1") --播放的标签
--	armature:setScale(0.5);
--    armature:setPosition(ccp(display.cx,display.cy))
--    self:addChild(armature)
    
    
    
    
    
    
    	--测试动画宝石公会
--	CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		"ccs/dragon/baoshihecheng/baoshihecheng0.png",
--		"ccs/dragon/baoshihecheng/baoshihecheng0.plist",
--		"ccs/dragon/baoshihecheng/baoshihecheng.ExportJson"
--	) --资源加载
--	 local armature = CCArmature:create("baoshihecheng") --动画的名称
--    armature:getAnimation():play("Animation1") --播放的标签
--    armature:setPosition(ccp(400,200))
--    self:addChild(armature)
    
    
    
    
    
--        display.addSpriteFramesWithFile("NewAnimation0.plist","NewAnimation0.png");
-- --测试英雄培养
--    CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		"NewAnimation01.png",
--		"NewAnimation01.plist",
--		"NewAnimation.ExportJson"
--	) --资源加载
--	 local armature = CCArmature:create("NewAnimation") --动画的名称
--    armature:getAnimation():play("Animation2") --播放的标签
--    armature:setPosition(ccp(400,200))
--    self:addChild(armature)








	
-- 1125  
-- 1462 1305
   
    --小晕的测试宝石公户
--      display.addSpriteFramesWithFile("311000.plist","311000.png")
--    display.addSpriteFramesWithFile("311001.plist","311001.png")
--    display.addSpriteFramesWithFile("Sheet_Tower2.plist","Sheet_Tower2.png")
--     local name = require("name");
--    CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		name.png ,
--		name.plist,
--		name.json 
--	) --资源加载
--	 local armature = CCArmature:create(name.name) --动画的名称
--    armature:getAnimation():play("fish") --播放的标签
----    armature:getAnimation():play("River&windmill") --播放的标签
----    armature:getAnimation():play("Bird") --播放的标签
--    armature:setPosition(ccp(display.cx,display.cy))
--    self:addChild(armature)
--    armature:addChild(display.newNode());
--    armature:setScale(0.5);
    
end


return MainScene
