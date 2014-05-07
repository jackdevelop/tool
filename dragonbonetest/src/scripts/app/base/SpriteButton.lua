--[[
 	SpriteButton
 	public ->> 全局公开类
 	不可重写
 	
 	sprite的按钮
	使用：
	local sptButton = SpriteButton:newButton(param)
     layer:addChild(sptButton);
 	
 
 * @author  jackdevelop@sina.com
 * $Id:$
 * @version 1.0
]]
local SpriteButton = class("SpriteButton");






--[[
初始化按钮
@param param 参数
 imageName 按钮的图片地址
 txt  按钮上的文字
 isPress 是否可以长按  默认为false
 listener 点击后的回调
 swallows 有这几种方式cc.TOUCH_BEGAN -- stop event dispatching    cc.TOUCH_BEGAN_SWALLOWS --吞噬事件    cc.TOUCH_BEGAN_NO_SWALLOWS -- continue event dispatching
 
 imageParam 比如： {imageName=,x=,y=}
 txtParam 比如：{txt=,x=,y=,size=，color}
]]
function SpriteButton:newButton(param)
	if not param then param = {} end
	local imageName=param.imageName;
	local isPress = param.isPress
	local listener = param.listener;
	local x=param.x;
	local y=param.y;
	local graylight=param.graylight;
	local swallows = param.swallows or  cc.TOUCH_BEGAN;
	
	
	local imageParam = param.imageParam;
	local txtParam = param.txtParam;
	
	
    local sprite = display.newSprite(imageName,x,y)
    local size = sprite:getContentSize();
	
	sprite:setCascadeOpacityEnabled(true)
	sprite:setCascadeColorEnabled(true)
	
	if imageParam then
	 	local imageParam_imageName=imageParam.imageName;
	 	local offsetX=imageParam.offsetX;
	 	local offsetY=imageParam.offsetY;
	 	local imageParam_sprite = display.newSprite(imageParam_imageName,imageParam.x,imageParam.y)
	 	imageParam_sprite:setTag(1000)
	 	sprite:addChild(imageParam_sprite);
	 	
	 	
		if not imageParam.x and not imageParam.y then --默认居中
			imageParam_sprite:setPosition(size.width/2 + tonumber(offsetX),size.height/2 + tonumber(offsetY));
		end
		
		if imageParam.scale and imageParam.scale ~= 1 then --缩放
			imageParam_sprite:setScale(imageParam.scale);
		end
		
		
		if imageParam.flipX then
			imageParam_sprite:setFlipX(true)
			imageParam_sprite:setPosition(size.width*1.5 + tonumber(imageParam.offsetX),size.height/2 + tonumber(imageParam.offsetY));
		end
		if imageParam.flipY then
			imageParam_sprite:setFlipY(true)
			imageParam_sprite:setPosition(size.width*0.5 + tonumber(imageParam.offsetX),-size.height/2 + tonumber(imageParam.offsetY));
		end
	end

	
    if txtParam then
        local label = ui.newTTFLabel(txtParam)
        sprite:addChild(label)
        
        
    end
	
	if graylight ~= nil then
		GameUtil.graylightWithSprite(sprite,graylight)
	end
	
	
	--点击效果
	local function touchClick()
		 sprite:setOpacity(128)
	end
	
	
	--没点击的效果
	local function touchNoClick()
		sprite:setOpacity(255)
	end
	
	
	--点击监听回调事件
	local function clickOneceHandle()
		if listener then 
			listener()
		end
	end
	
	
	local pressAction = nil;
	local dt_ = 0;
	local function clickPressHandle(flag)
		if flag then 
			if isPress and not pressAction then 
	       		pressAction = sprite:scheduleUpdate(function(dt)
	       			dt_ = dt_ + dt
	       			if dt_ > 0.5 then
	       				clickOneceHandle();
	       				dt_ = 0;
	       			end
	       		end, 3)
	       	end
	    else
	    	sprite:unscheduleUpdate();
       	end
	end
	




    sprite:setTouchEnabled(true) -- enable sprite touch
    sprite:addTouchEventListener(function(event, x, y, prevX, prevY)
        if event == "began" then
           touchClick();
           
          clickPressHandle(true);
          
          
          return  swallows;
--            return cc.TOUCH_BEGAN -- stop event dispatching
--			return cc.TOUCH_BEGAN_SWALLOWS --吞噬事件
--            return cc.TOUCH_BEGAN_NO_SWALLOWS -- continue event dispatching
        end

        local touchInSprite = sprite:getCascadeBoundingBox():containsPoint(CCPoint(x, y))
        if event == "moved" then
			if touchInSprite then 
				touchClick();
				clickPressHandle(true);
			else
				touchNoClick();
				clickPressHandle(false);
			end
			
        elseif event == "ended" then
            if touchInSprite then clickOneceHandle() end
            touchNoClick()
            clickPressHandle(false);
        else
           touchNoClick()
           clickPressHandle(false);
        end
        
         return  swallows;
    end, cc.MULTI_TOUCHES_ON) 

    return sprite
end



return SpriteButton