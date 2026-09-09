hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })

-- INPUTS --




--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

local csWindowRule = hl.window_rule({
    name    = "counter-strike2",
    match   = { class = "cs2"},
    immediate = true,
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Fix for lunar client feeling choppy when using gamescope
hl.window_rule({
    name  = "lunar-client",
    match = { class = ".*[Ll]unar.*" },
    immediate = true,
    -- confine_pointer = true,
})
hl.window_rule({
    name = "minecraft",
    match = { title = "^Minecraft\\*.*" },
    -- confine_pointer = true,
    immediate = true,
})
hl.window_rule({
    name = "gamescope",
    match = { title = "gamescope" },
    -- confine_pointer = true,
    immediate = true,
})
hl.window_rule({
    name  = "Counter-Strike 2",
    match = { class = "cs2" },
    immediate = true,
})

-- floats --
hl.window_rule({match = {title = "^Friends List$" },                      center = true})
hl.window_rule({match = {title = "^Friends List$" },                      float = true})

------------------
-- 43PR/dotfiles--
------------------

-- Opacity rules: 90% for all windows except fullscreen
hl.window_rule({
    match = { class = ".*" },
    opacity = "0.9 override",
})

hl.window_rule({
    match = { class = ".*", fullscreen = true },
    opacity = "1.0 override",
})

hl.window_rule({
    match = { class = ".*", focus = true },
    opacity = "1.0 override",
})

hl.window_rule({
    name = "float-pavucontrol",
    match = { class = "^(pavucontrol)$" },
    float = true,
})

hl.window_rule({
    name = "float-nm-connection-editor",
    match = { class = "^(nm-connection-editor)$" },
    float = true,
})

hl.window_rule({
    name = "float-blueman-manager",
    match = { class = "^(blueman-manager)$" },
    float = true,
})

hl.window_rule({
    name = "float-open-file",
    match = { title = "^(Open File)$" },
    float = true,
})

hl.window_rule({
    name = "float-save-file",
    match = { title = "^(Save File)$" },
    float = true,
})

local modalMatches = {
    { title = "^(Open|Authentication Required|Add Folder to Workspace|Choose Files|Save As|Confirm to replace files|File Operation Progress)$" },
    { initial_title = "^(Open File)$" },
    { class = "^([Xx]dg-desktop-portal-gtk)$" },
    { title = "^(File Upload|Choose wallpaper|Library)(.*)$" },
    { class = "^(.*dialog.*)$" },
    { title = "^(.*dialog.*)$" },
    { class = "^(hyprland-share-picker)$"},
}
for _, m in ipairs(modalMatches) do hl.window_rule({ match = m, float = true }) end
