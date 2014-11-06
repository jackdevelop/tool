--[[
CCSBaseUI.lua
]]
local CCSButton = require("app.base.CCSButton")
local BaseUI = class("BaseUI",function()
      return display.newNode();
end);



--[[

@param  ccsName  ccs的面板名称
@param  plistArr  plist的响应资源 数组
]]
function BaseUI:ctor(ccsPanelName,plistArr)
	--显示panel
	self.ccsPanel_ = TouchGroup:create()
    self:addChild(self.ccsPanel_)

    self._widget = GUIReader:shareReader():widgetFromJsonFile(ccsPanelName)
    self.ccsPanel_:addWidget(self._widget)
	
	
--	local node, width, height = cc.uiloader:load(ccsPanelName)
--    width = width or display.width
--    height = height or display.height
--    if node then
--        node:setPosition((display.width - width)/2, (display.height - height)/2)
--        self:addChild(node)
--    end
--    self.ccsPanel_ = node;
    
    
	--背景
--	local panel = cc.uiloader:seekNodeByName(self, "Panel_bg")
	local panel = self.ccsPanel_:getWidgetByName("Panel_bg")
	panel:setAnchorPoint(cc.p(0.5,0.5))
	panel:setPosition(cc.p(display.cx,display.cy))
	
	--背景上的那个一层透明层
--	self.Panel_22 = cc.uiloader:seekNodeByName(self, "Panel_22")
	self.Panel_22 = self.ccsPanel_:getWidgetByName("Panel_22")
	
	
	
	--关闭
	local colseButton =	self.ccsPanel_:getWidgetByName("Button_close");
--	local colseButton  = cc.uiloader:seekNodeByName(self, "Button_close")
	if colseButton then 
		CCSButton.registerEventScript(colseButton,false,function() self:dispose() end);
	end
	
	
	--返回按钮
--	local cancelButton  = cc.uiloader:seekNodeByName(self, "Button_cancel")
	local cancelButton =	self.ccsPanel_:getWidgetByName("Button_cancel");
	if cancelButton then
		cancelButton:setTouchEnabled(true)
		CCSButton.registerEventScript(cancelButton,false,function() 
			self:backHandle();
			self:dispose() 
		end);
		--没有使用到的首先隐藏
		cancelButton:setVisible(true)
		
	end
end





--[[
 获取当前ccs的layer
]]
function BaseUI:getCCSPanel()
	return self.ccsPanel_;
end





--[[
返回功能
]]
function BaseUI:backHandle()
	
end




--[[
关闭
当是点击x的时候  closeId 为0
当是点击返回按钮的时候  closeId 为1
其他为自定义
]]
function BaseUI:dispose(closeId)
	self:removeSelf();
--	self:dispatchEvent({name = "close",data={closeId = closeId}})	
--	PopUpManager:deletePopUp(self,"0")
--	PopUpManager:deletePopUp(self.imageBg_,"0")
end




return BaseUI
