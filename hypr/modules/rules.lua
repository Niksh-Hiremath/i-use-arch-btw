--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule {
    name = "impala",
    match = { class = "^impala$" },
    float = true,
    pin = true,
    size = { 650, 500 },
    move = { 1254, 40 }
}

hl.window_rule {
    name = "bluetui",
    match = { class = "^bluetui$" },
    float = true,
    pin = true,
    size = { 500, 450 },
    move = { 1404, 40 }
}

function waybar_pavucontrol()
    hl.dispatch(hl.dsp.exec_cmd("pavucontrol -t 1", {
        float = true,
        pin = true,
        size = { 600, 650 },
        move = { 1304, 40 }
    }))
end
