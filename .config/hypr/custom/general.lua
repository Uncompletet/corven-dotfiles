-- NEEDS TO BE HERE FOR THE USE OF 43PR/dotfiles SECTION

CACHYLGREEN = "rgba(82dcccff)"
CACHYMGREEN = "rgba(00aa84ff)"
CACHYDGREEN = "rgba(007d6fff)"
CACHYLBLUE  = "rgba(01ccffff)"
CACHYMBLUE  = "rgba(182545ff)"
CACHYDBLUE  = "rgba(111826ff)"
CACHYWHITE  = "rgba(ffffffff)"
CACHYGREY   = "rgba(ddddddff)"
CACHYGRAY   = "rgba(798bb2ff)"

-- ----------- --
-- Permissions --
-- ----------- --

hl.config({
    ecosystem = {
        enforce_permissions = false,
    },
})

hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
hl.permission("/usr/(bin|local/bin)/quickshell", "plugin","allow")
hl.permission({ binary = "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", type = "screencopy", mode = "allow" })

hl.config({
    input = {
        kb_layout   = "de",
        kb_variant  = "",
        kb_model    = "",
        kb_options  = "",
        kb_rules    = "",

        follow_mouse    = 1,
        sensitivity     =  0, -- -1.0 - 1.0, 0 means no modification.
        
        accel_profile   = "flat",

        touchpad = {
                natural_scroll = true,
        },
    },
})


-- ---------- --
-- Decoration --
-- ---------- --

-- 43PR/dotfiles
-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 4,
        border_size = 0,
        extend_border_grab_area = 10,
        resize_on_border = true,
            col = {
                active_border = {
                    colors = { CACHYLGREEN, CACHYDGREEN },
                    angle = 45,
                 },
            inactive_border = CACHYGRAY,
        },
    },
    group = {
        col = {
            border_active = CACHYLBLUE,
            border_inactive = CACHYGRAY,
            border_locked_active = CACHYDBLUE,
            border_locked_inactive = CACHYGRAY,
        },
        groupbar = {
            col = {
                active = CACHYLGREEN,
                inactive = CACHYGRAY,
                locked_active = CACHYDBLUE,
                locked_inactive = CACHYGRAY,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 18,
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 1,
            special = true,
        },
    },
})

-- ------- --
-- PLUGINS --
-- ------- --



