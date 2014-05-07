--[[
骨骼动画
使用：
--	local BaseDragonBone = require("client.fight.util.behaviors.show.base.BaseDragonBone")
--	local BaseDragonBone = require("app.base.BaseDragonBone");
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
	
	baseDragonBone:setPosition(display.cx,display.cy)
]]
--local Base = require("client.fight.util.behaviors.show.base.Base")
local Base = require("app.base.Base"); 
local BaseDragonBone = class("BaseDragonBone",Base)








--初始化数据
function BaseDragonBone:initData(param)
	--骨骼名称
	if not param then param = {} end
	local dragonName = param.dragonName
	if not dragonName then dragonName = "Dragon" end
	self.dragonName_ = dragonName;
	
	self.fps_ = param.fps or 24 --帧数
	
	
	local manager = CCArmatureDataManager:sharedArmatureDataManager()
    manager:addArmatureFileInfo(dragonName..".png", dragonName..".plist", dragonName..".xml")
    
end



--初始化视图
function BaseDragonBone:initView()
	local currentName = string.split(self.dragonName_, "/");
	local dragon = CCNodeExtend.extend(CCArmature:create(currentName[#currentName]))
--	local dragon = CCSpriteExtend.extend(CCArmature:create(currentName[#currentName]))
	dragon:connectMovementEventSignal(function(__evtType, __moveId)
		echoInfo("movement, evtType: %d, moveId: %s", __evtType, __moveId)
	end)
    local animation = dragon:getAnimation()
    animation:setAnimationScale(self.fps_ / 60) -- Flash fps is 24, cocos2d-x is 60
	--local aniName = "stand" --"stand", "walk", "jump", "fall"
--    animation:play(self.aniName_)
    --dragon:setPosition(0,0)
    --dragon:setScale(1)
    self.batch_:addChild(dragon)
    self.dragon_ = dragon;
    
    return dragon;
end



--设置点击
function BaseDragonBone:registerEventScript(listener,rect)
	local dragon = self.dragon_;
	--print(size,size.width,size.height);
	if not rect then
		local size = dragon:getContentSize(); 
		rect = CCRect(0, 0, size.width, size.height);
	end
	dragon:setCascadeBoundingBox(rect)
	dragon:setTouchEnabled(true) -- enable sprite touch
    dragon:addTouchEventListener(function(event, x, y, prevX, prevY)
    	if listener then
    		listener();
    	end
    end);
end





function BaseDragonBone:play(aniName)
	--骨骼播放的动画帧
	aniName = aniName or "stand";--"stand", "walk", "jump", "fall"
	local animation = self.dragon_:getAnimation()
	animation:play(aniName)
end

function BaseDragonBone:setPosition(x,y)
	self.dragon_:setPosition(x,y)
end


--移除
function BaseDragonBone:removeView()
	self.dragon_:disconnectMovementEventSignal()
    self.dragon_:removeSelf()
    self.dragon_ = nil;
    
	BaseDragonBone.super.removeView(self);
end









return BaseDragonBone;
