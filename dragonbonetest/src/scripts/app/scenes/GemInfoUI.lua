--[[
	宝石详细信息
]]
local CCSBaseUI = require("app.base.CCSBaseUI");
local GemInfoUI = class("GemInfoUI",CCSBaseUI)

function GemInfoUI:ctor()
--	local ccsPanelName = "baoshixiaoguo.ExportJson";
--	GemInfoUI.super.ctor(self,ccsPanelName)
	
	local ccsPanelName = "shezhi_SD.ExportJson";
	GemInfoUI.super.ctor(self,ccsPanelName)
	
	self:initView()
end



function GemInfoUI:initView()
--		self.allItems_ = {{},{},{},{}};
----		--------CCSTableViewList公用---------------------------------------
--		local showArryNum = #self.allItems_ --math.ceil( --math.ceil(((#allItems > bagNum and #allItems) or bagNum)/8)
--		local size = CCSizeMake(320,350) ;
--		local param = {
--			size = size  ,
--			cellSize = CCSize(190,400),
--			direction = kCCScrollViewDirectionVertical, --kCCScrollViewDirectionHorizontal, --kCCScrollViewDirectionVertical, --kCCScrollViewDirectionHorizontal
--			array = self.allItems_,
--			showArryNum = showArryNum, --最终写成这样,
--			scrollCellName = "GemInfoTableCellView",
--		}
--		local CCSTableViewList = require("app.base.CCSTableViewList")
--		local tableViewList = CCSTableViewList.new();
--		tableViewList:initData(param);
--		tableViewList:initView();
--		self:getCCSPanel():addChild(tableViewList);
--		tableViewList:setPosition(150,display.cy-190);
--		self.tableViewList_ = tableViewList;
		--------CCSTableViewList公用---------------------------------------
end



return GemInfoUI
