local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local Roact = require(ProjectRoot.Roact)

local Config = require(ExperienceChat.Config)

local TextMessageLabel = Roact.Component:extend("TextMessageLabel")
TextMessageLabel.defaultProps = {}

function TextMessageLabel:render()
	local text = self.props.textChatMessage.Text or ""
	local prefixText = self.props.textChatMessage.PrefixText or ""

	return Roact.createElement("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		Font = Config.ChatWindowFont,
		RichText = true,
		Size = UDim2.new(1, 0, 0, 0),
		Text = prefixText .. ": " .. text,
		TextColor3 = Config.ChatWindowTextColor3,
		TextSize = Config.ChatWindowTextSize,
		TextStrokeTransparency = self.props.textStrokeTransparency or 0.5,
		TextTransparency = self.props.textTransparency or 0,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		LayoutOrder = self.props.LayoutOrder,
	})
end

return TextMessageLabel