local backdrop = {
  edgeFile = "Interface\\AddOns\\ShaguDelgado\\border", edgeSize = 16,
  insets = {left = 0, right = 0, top = 0, bottom = 0},
}

-- castbar
ShaguDelgado = CreateFrame("Frame",nil,UIParent)
ShaguDelgado:RegisterEvent("SPELLCAST_START")
ShaguDelgado:RegisterEvent("PLAYER_ENTERING_WORLD");                                                                

ShaguDelgado:SetScript("OnEvent", function()
	CastingBarFrameStatusBar:SetStatusBarColor(0.69,0.28,0.97)
	CastingBarBorder:SetVertexColor(0.69,0.28,0.97)
end)

-- action buttons
for i = 1, 12 do
	getglobal('ActionButton'..i..'NormalTexture'):SetAlpha(0)
	getglobal('ActionButton'..i):SetBackdrop(backdrop)
	getglobal('MultiBarLeftButton'..i..'NormalTexture'):SetAlpha(0)
	getglobal('MultiBarLeftButton'..i):SetBackdrop(backdrop)
	getglobal('MultiBarRightButton'..i..'NormalTexture'):SetAlpha(0)
	getglobal('MultiBarRightButton'..i):SetBackdrop(backdrop)
	getglobal('MultiBarBottomLeftButton'..i..'NormalTexture'):SetAlpha(0)
	getglobal('MultiBarBottomLeftButton'..i):SetBackdrop(backdrop)
	getglobal('MultiBarBottomRightButton'..i..'NormalTexture'):SetAlpha(0)
	getglobal('MultiBarBottomRightButton'..i):SetBackdrop(backdrop)
	getglobal('BonusActionButton'..i..'NormalTexture'):SetAlpha(0)
	getglobal('BonusActionButton'..i):SetBackdrop(backdrop)
end

-- minimap
MinimapBorderTop:SetVertexColor(0.69,0.28,0.97)
MinimapBorder:SetVertexColor(0.69,0.28,0.97)

-- dorations
MainMenuBarLeftEndCap:SetVertexColor(0.69,0.28,0.97); 
MainMenuBarRightEndCap:SetVertexColor(0.69,0.28,0.97);
