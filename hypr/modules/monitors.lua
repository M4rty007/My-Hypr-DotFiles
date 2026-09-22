--------------------------------------------
-- __  __             _ _                 --
--|  \/  | ___  _ __ (_) |_ ___  _ __ ___ --
--| |\/| |/ _ \| '_ \| | __/ _ \| '__/ __|--
--| |  | | (_) | | | | | || (_) | |  \__ \--
--|_|  |_|\___/|_| |_|_|\__\___/|_|  |___/--
--                                        --
--------------------------------------------

-- Monitor P6
hl.monitor({
    output   = "eDP-1",
    mode     = "1366x768@60",
    position = "auto",
    scale    = "0.9",
})

-- Monitor V16
--hl.monitor({
--    output   = "eDP-1",
--    mode     = "1920x1200@144",
--    position = "0x0",
--    scale    = "1",
--})
--
--hl.monitor({
--    output   = "eDP-2",
--    mode     = "auto",
--    position = "1920x0",
--    scale    = "1",
--})

hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true})
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true})
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true})

hl.workspace_rule({ workspace = "4", monitor = "eDP-2", persistent = true}) -- second monitor
hl.workspace_rule({ workspace = "5", monitor = "eDP-2", persistent = true}) -- second monitor
hl.workspace_rule({ workspace = "6", monitor = "eDP-2", persistent = true}) -- second monitor