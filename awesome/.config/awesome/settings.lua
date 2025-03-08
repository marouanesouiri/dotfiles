return {
    keys = {
        modkey = "Mod4",
        altkey = "Mod1",
    },
    -- apps 
    apps = {
        terminal = "wezterm",
        editor = os.getenv("EDITOR") or "nvim",
        browser = "brave",
    },
    -- appearance settings
    appearance = {
        usePywal = true,
    },
}
