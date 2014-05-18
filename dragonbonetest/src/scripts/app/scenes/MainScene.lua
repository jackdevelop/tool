local SpriteButton = require("app.base.SpriteButton");

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	
	
	self:addChild(display.newSprite("map/map.png",display.cx,display.cy));
	
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
--		"ccs/dragon/baoshihecheng/baoshigonghui0.png",
--		"ccs/dragon/baoshihecheng/baoshigonghui0.plist",
--		"ccs/dragon/baoshihecheng/baoshigonghui.ExportJson"
--	) --资源加载
--	 local armature = CCArmature:create("baoshigonghui") --动画的名称
--    armature:getAnimation():play("Animation1") --播放的标签
--    armature:setPosition(ccp(400,200))
--    self:addChild(armature)
    
    
    
    
    
        
 --测试英雄培养
--    CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		"NewAnimation0.png",
--		"NewAnimation0.plist",
--		"NewAnimation.ExportJson"
--	) --资源加载
--	 local armature = CCArmature:create("NewAnimation") --动画的名称
--    armature:getAnimation():play("Animation2") --播放的标签
--    armature:setPosition(ccp(400,200))
--    self:addChild(armature)









    
   
--    --小晕的测试宝石公户
--     local name = require("name");
--    CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo(
--		name.png ,
--		name.plist,
--		name.json 
--	) --资源加载
--	 local armature = CCArmature:create(name.name) --动画的名称
--    armature:getAnimation():play("Animation1") --播放的标签
--    armature:setPosition(ccp(display.cx,display.cy))
--    self:addChild(armature)
--    armature:addChild(display.newNode());
    
    

    
    
end


return MainScene
