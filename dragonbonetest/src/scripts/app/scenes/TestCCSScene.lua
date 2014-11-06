

local TestCCSScene = class("TestCCSScene", function()
    return display.newScene("TestCCSScene")
end)

function TestCCSScene:ctor()
	--宝石信息界面  cctableview
	local GemInfoUI = require("app.scenes.GemInfoUI")
	local gemInfoUI =	GemInfoUI.new();
    self:addChild(gemInfoUI);
	
	

--	--这是测试关闭按钮  
--	local SetUI = require("app.scenes.SetUI")
--	local setui =	SetUI.new();
--    self:addChild(setui);
end


return TestCCSScene
