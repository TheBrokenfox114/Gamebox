Gamebox = {}
assert(SMODS.load_file("atlases.lua", SMODS.current_mod.id))()
assert(SMODS.load_file("sounds.lua", SMODS.current_mod.id))()
assert(SMODS.load_file("helper_funcs.lua", SMODS.current_mod.id))()
assert(SMODS.load_file('jokers/jokers.lua', SMODS.current_mod.id))()

-- G.SETTINGS[G.SETTINGS.profile].meow = 'meow'
-- G:save_settings()
assert(SMODS.load_file("ui.lua", SMODS.current_mod.id)){}