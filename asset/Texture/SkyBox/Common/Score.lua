print("startup ui")

local max = 5

local RankList = self:GetChildByName("ScrollableView"):GetChildByName("VerticalLayoutContainer")
local NameTxt
local ScoreTxt
local PName
local PScore

PackageHandlers:Receive("UpdateRank", function(player, DataList)

  max = #DataList

  for i = 1,max do
    NameTxt = RankList:GetChildByName("Num"..i):GetChildByName("NameText")
    ScoreTxt = RankList:GetChildByName("Num"..i):GetChildByName("ScoreText")
    PName = DataList[i].key
    PScore = DataList[i].value
    NameTxt.Text = PName
    ScoreTxt.Text = PScore
  end
end)