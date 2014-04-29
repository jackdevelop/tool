--[[
骨骼动画
]]
local BaseDragonBone = class("BaseDragonBone",Base)









--初始化数据
function BaseDragonBone:initData(param)
	--骨骼名称
	local dragonName = param.dragonName
	if not dragonName then dragonName = "Dragon" end
	self.dragonName_ = dragonName;
	
	--骨骼播放的动画帧
	local aniName = param.aniName
	self.aniName_ = aniName or "stand";--"stand", "walk", "jump", "fall"
	
	local manager = CCArmatureDataManager:sharedArmatureDataManager()
    manager:addArmatureFileInfo(dragonName..".png", dragonName..".plist", dragonName..".xml")
    
end



--初始化视图
function BaseDragonBone:initView()
	local dragon = CCNodeExtend.extend(CCArmature:create(self.dragonName_))
	dragon:connectMovementEventSignal(function(__evtType, __moveId)
			echoInfo("movement, evtType: %d, moveId: %s", __evtType, __moveId)
		end)
    local animation = dragon:getAnimation()
    animation:setAnimationScale(24 / 60) -- Flash fps is 24, cocos2d-x is 60
	--local aniName = "stand" --"stand", "walk", "jump", "fall"
    animation:play(self.aniName_)
    --dragon:setPosition(0,0)
    --dragon:setScale(1)
    self.batch_:addChild(dragon)
    self.dragon_ = dragon;
    
    return dragon;
end








--移除
function BaseDragonBone:removeView()
	self.dragon_:disconnectMovementEventSignal()
    self.dragon_:removeSelf()
    self.dragon_ = nil;
    
	BaseDragonBone.super.removeView(self);
end









return BaseDragonBone;
