local SpriteButton = require("app.base.SpriteButton");

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	
	
     
	
	--测试骨骼动画
--	local BaseDragonBone = require("app.base.BaseDragonBone");
--	local baseDragonBone = BaseDragonBone.new(nil,self);
--	local param = {
--		dragonName = "ccs/dragon/shop/shopEffect", --swf名称
--		fps = 24 , --帧数
--	}
--	local rect = nil;
--	baseDragonBone:initData(param);
--	baseDragonBone:initView();
--	baseDragonBone:registerEventScript(function()
--		print("点击了");
--	end,rect)
--	baseDragonBone:setPosition(display.cx,display.cy)
--	baseDragonBone:play("ziyuan_open") --播放的帧标签
	 
	
	
	
	
	
	
	
	
	
	
	
	
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
    
    
    
    
    
    
    
    --小晕的测试宝石公户
    CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
		"baoshihecheng0.png",
		"baoshihecheng0.plist",
		"baoshihecheng.ExportJson"
	) --资源加载
	 local armature = CCArmature:create("baoshihecheng") --动画的名称
    armature:getAnimation():play("Animation1") --播放的标签
    armature:setPosition(ccp(400,200))
    self:addChild(armature)
    
    
    
    	--测试杨云的cocostuiod的动画
--	CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		"baoshigonghui0.png",
--		"baoshigonghui0.plist",
--		"baoshigonghui.ExportJson"
--	) --资源加载
--	 local armature = CCArmature:create("baoshigonghui") --动画的名称
--    armature:getAnimation():play("Animation1") --播放的标签
----    armature:getAnimation():playByIndex(1);
--    armature:setPosition(ccp(display.cx,display.cy))
--    self:addChild(armature)
    
    
end


return MainScene
