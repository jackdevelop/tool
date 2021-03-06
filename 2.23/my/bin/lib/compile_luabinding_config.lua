
local CCObjectTypes = {
    "CCAccelAmplitude",
    "CCAccelDeccelAmplitude",
    "CCAction",
    "CCActionCamera",
    "CCActionEase",
    "CCActionInstant",
    "CCActionInterval",
    "CCActionManager",
    "CCAnimate",
    "CCAnimation",
    "CCAnimationCache",
    "CCAnimationData",
    "CCAnimationFrame",
    "CCArmature",
    "CCArmatureAnimation",
    "CCArmatureData",
    "CCArmatureDataManager",
    "CCArmatureDisplayData",
    "CCArray",
    "CCAtlasNode",
    "CCBatchNode",
    "CCBezierBy",
    "CCBezierTo",
    "CCBlink",
    "CCBone",
    "CCBoneData",
    "CCBool",
    "CCCallFunc",
    "CCCallFuncN",
    "CCCamera",
    "CCCardinalSplineBy",
    "CCCardinalSplineTo",
    "CCCatmullRomBy",
    "CCCatmullRomTo",
    "CCCircleShape",
    "CCClippingNode",
    "CCClippingRegionNode",
    "CCComponent",
    "CCConfiguration",
    "CCControl",
    "CCControlButton",
    "CCControlColourPicker",
    "CCControlHuePicker",
    "CCControlPotentiometer",
    "CCControlSaturationBrightnessPicker",
    "CCControlSlider",
    "CCControlStepper",
    "CCControlSwitch",
    "CCDeccelAmplitude",
    "CCDelayTime",
    "CCDictionary",
    "CCDirector",
    "CCDisplayData",
    "CCDisplayLinkDirector",
    "CCDouble",
    "CCDrawNode",
    "CCEaseBackIn",
    "CCEaseBackInOut",
    "CCEaseBackOut",
    "CCEaseBounce",
    "CCEaseBounceIn",
    "CCEaseBounceInOut",
    "CCEaseBounceOut",
    "CCEaseElastic",
    "CCEaseElasticIn",
    "CCEaseElasticInOut",
    "CCEaseElasticOut",
    "CCEaseExponentialIn",
    "CCEaseExponentialInOut",
    "CCEaseExponentialOut",
    "CCEaseIn",
    "CCEaseInOut",
    "CCEaseOut",
    "CCEaseRateAction",
    "CCEaseSineIn",
    "CCEaseSineInOut",
    "CCEaseSineOut",
    "CCEditBox",
    "CCFadeIn",
    "CCFadeOut",
    "CCFadeOutBLTiles",
    "CCFadeOutDownTiles",
    "CCFadeOutTRTiles",
    "CCFadeOutUpTiles",
    "CCFadeTo",
    "CCFiniteTimeAction",
    "CCFlipX",
    "CCFlipX3D",
    "CCFlipY",
    "CCFlipY3D",
    "CCFloat",
    "CCFollow",
    "CCFrameData",
    "CCGLProgram",
    "CCGraySprite",
    "CCGrid3DAction",
    "CCGridAction",
    "CCGridBase",
    "CCHide",
    "CCImage",
    "CCInteger",
    "CCJumpBy",
    "CCJumpTiles3D",
    "CCJumpTo",
    "CCKeypadDispatcher",
    "CCLabelAtlas",
    "CCLabelBMFont",
    "CCLabelTTF",
    "CCLayer",
    "CCLayerColor",
    "CCLayerGradient",
    "CCLayerMultiplex",
    "CCLens3D",
    "CCLiquid",
    "CCMenu",
    "CCMenuItem",
    "CCMenuItemAtlasFont",
    "CCMenuItemFont",
    "CCMenuItemImage",
    "CCMenuItemLabel",
    "CCMenuItemSprite",
    "CCMenuItemToggle",
    "CCMotionStreak",
    "CCMoveBy",
    "CCMovementBoneData",
    "CCMovementData",
    "CCMoveTo",
    "CCNode",
    "CCNotificationCenter",
    "CCObject",
    "CCOrbitCamera",
    "CCPageTurn3D",
    "CCParallaxNode",
    "CCParticleBatchNode",
    "CCParticleDisplayData",
    "CCParticleExplosion",
    "CCParticleFire",
    "CCParticleFireworks",
    "CCParticleFlower",
    "CCParticleGalaxy",
    "CCParticleMeteor",
    "CCParticleRain",
    "CCParticleSmoke",
    "CCParticleSnow",
    "CCParticleSpiral",
    "CCParticleSun",
    "CCParticleSystem",
    "CCParticleSystemQuad",
    "CCPlace",
    "CCPointArray",
    "CCPointShape",
    "CCPolygonShape",
    "CCProfiler",
    "CCProfilingTimer",
    "CCProgressFromTo",
    "CCProgressTimer",
    "CCProgressTo",
    "CCRectShape",
    "CCRemoveSelf",
    "CCRenderTexture",
    "CCRepeat",
    "CCRepeatForever",
    "CCReuseGrid",
    "CCReverseTime",
    "CCRipple3D",
    "CCRotateBy",
    "CCRotateTo",
    "CCScale9Sprite",
    "CCScaleBy",
    "CCScaleTo",
    "CCScene",
    "CCScheduler",
    "CCScrollView",
    "CCSequence",
    "CCSet",
    "CCShaky3D",
    "CCShakyTiles3D",
    "CCShapeNode",
    "CCShatteredTiles3D",
    "CCShow",
    "CCShuffleTiles",
    "CCSkewBy",
    "CCSkewTo",
    "CCSpawn",
    "CCSpeed",
    "CCSplitCols",
    "CCSplitRows",
    "CCSprite",
    "CCSpriteBatchNode",
    "CCSpriteDisplayData",
    "CCSpriteFrame",
    "CCSpriteFrameCache",
    "CCStopGrid",
    "CCString",
    "CCTableView",
    "CCTableViewCell",
    "CCTargetedAction",
    "CCTextFieldTTF",
    "CCTexture2D",
    "CCTextureAtlas",
    "CCTextureCache",
    "CCTiledGrid3DAction",
    "CCTileMapAtlas",
    "CCTintBy",
    "CCTintTo",
    "CCTMXLayer",
    "CCTMXLayerInfo",
    "CCTMXMapInfo",
    "CCTMXObjectGroup",
    "CCTMXTiledMap",
    "CCTMXTilesetInfo",
    "CCToggleVisibility",
    "CCTouchDispatcher",
    "CCTransitionCrossFade",
    "CCTransitionFade",
    "CCTransitionFadeBL",
    "CCTransitionFadeDown",
    "CCTransitionFadeTR",
    "CCTransitionFadeUp",
    "CCTransitionFlipAngular",
    "CCTransitionFlipX",
    "CCTransitionFlipY",
    "CCTransitionJumpZoom",
    "CCTransitionMoveInB",
    "CCTransitionMoveInL",
    "CCTransitionMoveInR",
    "CCTransitionMoveInT",
    "CCTransitionPageTurn",
    "CCTransitionProgress",
    "CCTransitionProgressHorizontal",
    "CCTransitionProgressInOut",
    "CCTransitionProgressOutIn",
    "CCTransitionProgressRadialCCW",
    "CCTransitionProgressRadialCW",
    "CCTransitionProgressVertical",
    "CCTransitionRotoZoom",
    "CCTransitionScene",
    "CCTransitionSceneOriented",
    "CCTransitionShrinkGrow",
    "CCTransitionSlideInB",
    "CCTransitionSlideInL",
    "CCTransitionSlideInR",
    "CCTransitionSlideInT",
    "CCTransitionSplitCols",
    "CCTransitionSplitRows",
    "CCTransitionTurnOffTiles",
    "CCTransitionZoomFlipAngular",
    "CCTransitionZoomFlipX",
    "CCTransitionZoomFlipY",
    "CCTurnOffTiles",
    "CCTwirl",
    "CCWaves",
    "CCWaves3D",
    "CCWavesTiles3D",
}

function string.split(str, delimiter)
    if (delimiter=='') then return false end
    local pos,arr = 0, {}
    -- for each divider found
    for st,sp in function() return string.find(str, delimiter, pos, true) end do
        table.insert(arr, string.sub(str, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(str, pos))
    return arr
end

function string.trim(str)
    str = string.gsub(str, "^[ \t\n\r]+", "")
    return string.gsub(str, "[ \t\n\r]+$", "")
end

if type(_extra_parameters) == "table" then
    if _extra_parameters.CCOBJECTS then
        local arr = string.split(_extra_parameters.CCOBJECTS, ",")
        for i = 1, #arr do
            local v = string.trim(tostring(arr[i]))
            if v ~= "" then
                CCObjectTypes[#CCObjectTypes + 1] = v
            end
        end
    end
end

-- register CCObject types
_push_functions = _push_functions or {}
for i = 1, #CCObjectTypes do
    _push_functions[CCObjectTypes[i]] = "toluafix_pushusertype_ccobject"
end

-- register LUA_FUNCTION, LUA_TABLE, LUA_HANDLE type
_is_functions = _is_functions or {}
_to_functions = _to_functions or {}

_to_functions["LUA_FUNCTION"] = "toluafix_ref_function"
_is_functions["LUA_FUNCTION"] = "toluafix_isfunction"
_to_functions["LUA_TABLE"] = "toluafix_totable"
_is_functions["LUA_TABLE"] = "toluafix_istable"
