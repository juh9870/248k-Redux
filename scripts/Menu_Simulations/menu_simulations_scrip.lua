local menu_simulations = data.raw["utility-constants"]["default"].main_menu_simulations

local function filename(name)
    return '__248k-Redux-juh-temporary-fork__/prototypes/Menu_Simulations/'..name
end

--Remove all other menu simulations, this is only for testing
if settings.startup["kill-All-Other-Menu-Simulations"].value then
  for k in pairs (menu_simulations) do
    menu_simulations[k] = nil
  end
end
--Code took from the Teddys Menu Simulations mod

menu_simulations.Menu_Test_1 = 
{
    
    checkboard = false,
    game_view_settings = {
      default_show_value = false,
    },
    save = filename("Menu_Test_1.zip"),
    length = 60 * 10,
    
    init =
	  [[
		local sim_planet = game.surfaces.nauvis
    local logo = sim_planet.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    logo.destructible = false
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_surface_index = sim_planet.index
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
	  ]],

}

--Old menu Simulations

data.raw["utility-constants"]["default"].main_menu_simulations.menu_248k_1 =

{
  checkboard = false,
  save = filename("248k_menu_1.zip"),
  length = 60*25,
  init = [[
		local sim_planet = game.surfaces.nauvis
    local logo = sim_planet.find_entities_filtered{name = "factorio-logo-22tiles", limit = 1}[1]  
    game.simulation.camera_position = {logo.position.x, logo.position.y}
    game.simulation.camera_zoom = 0.7
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 1
  ]],
}

data.raw["utility-constants"]["default"].main_menu_simulations.menu_248k_2 =
{
  checkboard = false,
  save = filename("248k_menu_2.zip"),
  length = 60*25,
  init = [[
		local sim_planet = game.surfaces.nauvis
    local logo = sim_planet.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]  
    game.simulation.camera_position = {logo.position.x, logo.position.y}
    game.simulation.camera_zoom = 0.45
    game.tick_paused = false
  ]],
}

data.raw["utility-constants"]["default"].main_menu_simulations.menu_248k_3 =
{
  checkboard = false,
  save = filename("248k_menu_3.zip"),
  length = 60*25,
  init = [[
		local sim_planet = game.surfaces.nauvis
    local logo = sim_planet.find_entities_filtered{name = "factorio-logo-16tiles", limit = 1}[1]  
    game.simulation.camera_position = {logo.position.x, logo.position.y}
    game.simulation.camera_zoom = 0.7
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 1
  ]],
}

data.raw["utility-constants"]["default"].main_menu_simulations.menu_248k_6 =
{
  checkboard = false,
  save = filename("248k_menu_6.zip"),
  length = 60*25,
  init = [[
		local sim_planet = game.surfaces.nauvis
    local logo = sim_planet.find_entities_filtered{name = "crash-site-spaceship", limit = 1}[1]  
    game.simulation.camera_position = {logo.position.x, logo.position.y}
    game.simulation.camera_zoom = 0.7
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 1
  ]],
}