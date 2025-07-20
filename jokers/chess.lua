SMODS.Consumable{
    key = 'knight',
    set = 'Tarot', -- Change to board-game specific set later
    atlas = 'Jokers', -- Change to consumables atlas later
    rarity = 4,
    pos = { x = 0, y = 0 },
    -- soul_pos = { x = 0, y = 1},
    unlocked = true,
    discovered = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = {key = 'e_negative_playing_card', set = 'Edition', config = {extra = 1}}
		return {
			key = self.key
		}
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = (function()
                play_sound('timpani')
                local card = SMODS.add_card({
                    set = 'Base',
                    edition = 'e_negative',
                    area = G.hand,
                    rank = 'A',
                    suit = pseudorandom_element(SMODS.Suits, card.key).key
                })
                return true
            end)
        }))
    end,
    can_use = function(self, card)
        return G.STATE == G.STATES.SELECTING_HAND
    end
}