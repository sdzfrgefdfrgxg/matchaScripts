-- UILib implementation (simplified version of the provided code)
local UILib = {}
UILib.__index = UILib

function UILib:CreateWindow(config)
    local self = setmetatable({}, UILib)
    self.name = config.Name or "Fishing Bot"
    self.tabs = {}
    self.visible = true
    return self
end

function UILib:CreateTab(name)
    local tab = {name = name, items = {}}
    table.insert(self.tabs, tab)
    return tab
end

function UILib:CreateButton(tab, config)
    local button = {
        type = "button",
        name = config.Name or "Button",
        callback = config.Callback or function() end
    }
    table.insert(tab.items, button)
    return button
end

function UILib:CreateToggle(tab, config)
    local toggle = {
        type = "toggle",
        name = config.Name or "Toggle",
        value = config.CurrentValue or false,
        callback = config.Callback or function() end
    }
    table.insert(tab.items, toggle)
    return toggle
end

function UILib:CreateSlider(tab, config)
    local slider = {
        type = "slider",
        name = config.Name or "Slider",
        min = config.Range and config.Range[1] or 0,
        max = config.Range and config.Range[2] or 100,
        value = config.CurrentValue or 50,
        callback = config.Callback or function() end
    }
    table.insert(tab.items, slider)
    return slider
end

return UILib
