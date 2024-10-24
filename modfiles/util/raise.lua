local _raise = {}

---@param player LuaPlayer
---@param trigger "main_dialog" | "compact_factory"
---@param parent LuaGuiElement?
function _raise.build(player, trigger, parent)
    script.raise_event(CUSTOM_EVENTS.build_gui_element, {player_index=player.index, trigger=trigger, parent=parent})
end

---@param player LuaPlayer
---@param trigger "all" | "factory" | "production" | "production_detail" | "title_bar" | "district_info" | "factory_list" | "production_bar" | "districts_box" | "item_boxes" | "production_box" | "production_table" | "compact_factory" | "paste_button"
function _raise.refresh(player, trigger)
    script.raise_event(CUSTOM_EVENTS.refresh_gui_element, {player_index=player.index, trigger=trigger})
end

---@param player LuaPlayer
---@param metadata table
function _raise.open_dialog(player, metadata)
    script.raise_event(CUSTOM_EVENTS.open_modal_dialog, {player_index=player.index, metadata=metadata})
end

---@param player LuaPlayer
---@param action "submit" | "cancel" | "delete"
---@param skip_opened boolean?
function _raise.close_dialog(player, action, skip_opened)
    script.raise_event(CUSTOM_EVENTS.close_modal_dialog,
        {player_index=player.index, action=action, skip_opened=skip_opened})
end

return _raise
