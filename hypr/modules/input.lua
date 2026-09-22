-------------------------------
-- ___                   _   --
--|_ _|_ __  _ __  _   _| |_ --
-- | || '_ \| '_ \| | | | __|--
-- | || | | | |_) | |_| | |_ --
--|___|_| |_| .__/ \__,_|\__|--
--          |_|              --
-------------------------------

----------
--Layout--
----------
hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",
        kb_model   = "abnt2",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

------------
--Trackpad--
------------
hl.gesture({fingers = 3, direction = "horizontal", action = "workspace"})
hl.gesture({fingers = 3, direction = "up",         action = "fullscreen"})
hl.gesture({fingers = 3, direction = "down",       action = "float"})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
