set __fish_git_prompt_showcolorhints 1
set __fish_git_prompt_show_informative_status 1

function fish_prompt --description 'fish prompt'
    set -l color_cwd
    set -l color_suffix $fish_color_normal
    set -l last_status "$status"
    set -l suffix
    set -l duration_seconds (math (math $CMD_DURATION / 1000) \% 60)
    set -l duration_minutes (math (math $CMD_DURATION / 60000) \% 60)
    set -l duration_hours (math $CMD_DURATION / 3600000)
    set -l duration_text

    if [ $last_status != 0 ]
        set color_suffix $fish_color_error
    end

    if [ $CMD_DURATION -ge 3600000 ]
        set duration_text $duration_hours"h"
    end
    if [ $CMD_DURATION -ge 60000 ]
        set duration_text $duration_text$duration_minutes"m"
    end
    if [ $CMD_DURATION -ge 10000 ]
        set duration_text $duration_text$duration_seconds"s"
    end

    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '$'
    end

    echo -s (set_color $color_cwd) (prompt_pwd) (__fish_git_prompt) (set_color $fish_color_error) " $duration_text" (set_color normal)
    echo -n -s (set_color $color_suffix) "$suffix " (set_color normal)
end
