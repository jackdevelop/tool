
function __G__TRACKBACK__(errorMessage)
    print("----------------------------------------")
    print("LUA ERROR: " .. tostring(errorMessage) .. "\n")
    print(debug.traceback("", 2))
    print("----------------------------------------")
end

--CCLuaLoadChunksFromZIP("res/framework_precompiled.zip")    


    
--print("CCArmatureDataManager",CCSWidgetExtend,ActionManager,CCActionObject,CCArmature.getAnimation,CCBone,Button,Layout,CCLayer);
--print(ImageView,Label,DragPanel,PageView,LoadingBar,Button.loadTextures);
--print(Layout.addWidget,Widget.addWidget,TouchGroup);
--print(Button.addTouchEventListener,UINodeContainer)
--CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfoAsync("ccs/ani/ShopUI.ExportJson",function() print("XXXXXXX") end)
----	CCArmatureDataManager:sharedArmatureDataManager():addArmatureFileInfo("ccs/ani/ShopUI.ExportJson");
--	local armature = CCArmature:create("ShopUI");
--    armature:getAnimation():playWithIndex(0);
--    armature:setPosition(ccp(100,100));
require("app.MyApp").new():run()
