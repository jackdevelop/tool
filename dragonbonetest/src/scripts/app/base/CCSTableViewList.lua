--[[
CCSTableViewList


--使用方法
	local allArr = {{1,2,3},{4,5,6},{7},{8}};
	local param = {
		size = CCSizeMake(660,400)  ,
		cellSize = CCSize(100,100),
		direction = kCCScrollViewDirectionVertical, --kCCScrollViewDirectionHorizontal, --kCCScrollViewDirectionVertical, --kCCScrollViewDirectionHorizontal
		array = allArr,
		scrollCellName = "BagTableCellView",
	}
	local CCSTableViewList = require("client.view.ccs.ui.base.CCSTableViewList")
	local tableViewList = CCSTableViewList.new();
	tableViewList:initData(param);
	tableViewList:initView();
	tableViewList:setPosition(display.cx,display.cy);
	self:addChild(tableViewList);

]]
local EventProtocol = require("framework.api.EventProtocol");
local CCSTableViewList = class("CCSTableViewList",function()
	local layer=display.newNode()
	EventProtocol.extend(layer)
	return layer;
end)



function CCSTableViewList:initData(param)
	self.size_ = param.size;
	self.cellSize_  = param.cellSize
	self.direction_ = param.direction or kCCScrollViewDirectionVertical;--kCCScrollViewDirectionVertical, --kCCScrollViewDirectionHorizontal,
	self.array_ = param.array;
	self.isPress_ = param.isPress;--是否长按
	self.showArryNum_ = param.showArryNum
	self.dispath_kNumberOfCellsInTableView_ = param.dispath_kNumberOfCellsInTableView;--是否触发CCTableView.kNumberOfCellsInTableView事件

	
	self.allItemView_ = {};
end






function CCSTableViewList:initView()
	local tableView = CCTableView:create(self.size_)
	self:addChild(tableView)
	
    tableView:setDirection(self.direction_)
    tableView:registerScriptHandler(handler(self,self.kTableCellSizeForIndex),CCTableView.kTableCellSizeForIndex)
    tableView:registerScriptHandler(handler(self,self.kTableCellSizeAtIndex),CCTableView.kTableCellSizeAtIndex)
    tableView:registerScriptHandler(handler(self,self.kNumberOfCellsInTableView),CCTableView.kNumberOfCellsInTableView)
    tableView:registerScriptHandler(handler(self,self.scrollViewDidScroll),CCTableView.kTableViewScroll)
    tableView:registerScriptHandler(handler(self,self.scrollViewDidZoom),CCTableView.kTableViewZoom)
    tableView:registerScriptHandler(handler(self,self.tableCellTouched),CCTableView.kTableCellTouched)
     tableView:registerScriptHandler(handler(self,self.kTableCellUnhighLight),CCTableView.kTableCellUnhighLight)
    tableView:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
 	tableView:reloadData()
    
    self.tableView_ = tableView
end


--[[
设置显示顺序  
]]
function CCSTableViewList:setVerticalFillOrder(value)
 	self.tableView_:setVerticalFillOrder(value) --设置顺序是自上往下   kCCTableViewFillTopDown, kCCTableViewFillBottomUp
end


--[[
更新数据源
]]
function CCSTableViewList:updataDataSource(array,showArryNum)
	if showArryNum then
 		self.showArryNum_ =showArryNum;
 	end
 	
 	
	self.array_ = array or {};
 	self.tableView_:reloadData();
end







function CCSTableViewList:kTableCellUnhighLight(table,cell)
	print("kTableCellUnhighLight",cell:getIdx())
	self:dispatchEvent({name = "kTableCellUnhighLight", cell = cell})
end

function CCSTableViewList:scrollViewDidScroll(view)
	print("scrollViewDidScroll")
end

function CCSTableViewList:scrollViewDidZoom(view)
    print("scrollViewDidZoom")
end

function CCSTableViewList:tableCellTouched(table,cell)
	print("CCSTableViewList:tableCellTouched");
	local pTouch = table:getCurrentTouchs()
	if cell then
    	self:dispatchEvent({name = "onClickListener", cell = cell})
    end
	
	
	
end

function CCSTableViewList:kTableCellSizeForIndex(table,idx) 
	print("CCSTableViewList:kTableCellSizeForIndex");
      return self.cellSize_.width,self.cellSize_.height;
end



function CCSTableViewList:kTableCellSizeAtIndex(table, idx)
    local strValue = string.format("%d",idx)
    local cell = table:dequeueCell()
    
    if nil == cell then
        cell = CCTableViewCell:new()
	else
		cell:removeAllChildren()
    end
    
    

	local index = idx;
	local oneArr = self.array_[index+1];
	
	 local spt = display.newSprite("#ui_sys_city_gembuild_tadikuang.png")
	 cell:addChild(spt)
	 
    self.allItemView_[index+1] = cell;
    return cell
end






function CCSTableViewList:kNumberOfCellsInTableView(table)
	if self.tableView_ and self.dispath_kNumberOfCellsInTableView_  then
		local contentOffset =  self.tableView_:getContentOffset();
		self:dispatchEvent({name = CCTableView.kNumberOfCellsInTableView, contentOffset =contentOffset })
   	end
   	return self.showArryNum_  or #self.array_--最终写成这样
end



return CCSTableViewList