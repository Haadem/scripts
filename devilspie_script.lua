
-- debug_print command does only print anything to stdout
-- if devilspie2 is run using the --debug option
debug_print("Window Name: " .. get_window_name());
debug_print("Application name: " .. get_application_name())

-- I want my Xfce4-terminal to the 
-- Strings are case sensitive, please note this when creating rule scripts.
if (get_application_name() == "Terminal") then
    set_window_opacity(1.0)
    set_window_size(1000, 850)
    -- center()
end


-- Matching by windows that end in "Mozilla Firefox" :   
if (End=='' or string.sub(get_window_name(),-string.len("Google Chrome"))=="Google Chrome") then
        set_window_size(1300, 2000);
end
