--[[
  基本的显示视图
]]
local Base = class("Base")




function Base:ctor(object,batch)
	self.object_=object;
	self.batch_=batch;--父类
	
--	self:setCascadeOpacityEnabled(true)
--	self:setCascadeColorEnabled(true)
end





--初始化数据
function Base:initData()
end

--初始化视图
function Base:initView()
end
--获取外层batch
function Base:getBatch()
	return self.batch_
end






--添加到当前显示对象 动画
function Base:addDecoration(decorationName,currentParent,onComplete)
	local decoration ;
	if currentParent then
		decoration = Decoration.new(decorationName)
	    decoration:createView(currentParent,onComplete)
	    local view=decoration:getView();
	    view:setPosition(decoration.offestX_,decoration.offestY_)
	end
	return decoration
end






--移除
function Base:removeView()
--	print("已经销毁");
	self.object_ = nil;
	self.batch_=nil;
end









return Base;
