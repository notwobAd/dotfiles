hl.env("XCURSOR_THEME", "ArcStarry-Cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Nvidia driver settings
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- use GTK2 theme in Qt5, Qt6 apps with AUR packages qt5-styleplugins and qt6gtk2
hl.env("QT_QPA_PLATFORMTHEME", "gtk2")

-- Use swww wallpaper service
hl.env("SWWW_TRANSITION_TYPE", "any")
hl.env("SWWW_TRANSITION_DURATION", "2")
hl.env("SWWW_TRANSITION_FPS", "144")
