{
  inputs,
  programs,
  config,
  ...
}:
{
  wayland.windowManager.hyprland = {
    xwayland.enable = true;
    enable = true;
    settings = {

      exec-once = "hyprpaper & hyprpanel & hyprpolkitagent";

      monitor = [
        "DP-1, 1920x1080@120, auto, 1"
        "DP-2, 1920x1080@120, auto, 1"
        "DP-3, 1920x1080@120, auto, 1"
      ];

      general = {
        "col.active_border" = "rgb(56526e)";
        "col.inactive_border" = "rgb(232136)";

        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
      };

      decoration = {
        rounding = "10";
      };

      windowrule = [
        "opacity 0.95, fullscreen:0"
      ];

      "$mod" = "SUPER";
      "$modShift" = "SUPERSHIFT";

      bind = [
        # system binds
        "$mod, space, exec, wofi --show drun"
        "$mod, Q, killactive"
        "$mod, F, fullscreen, 1"
        "$modShift, F, fullscreen, 0"
        "$mod, P, exec, hyprshot -m region"
        "$modShift, P, exec, hyprshot -m active -m output"
        "$mod, V, togglefloating"

        # program binds
        "$mod, D, exec, vesktop"
        "$mod, E, exec, thunar"
        "$mod, W, exec, firefox"
        "$mod, C, exec, codium"
        "$mod, T, exec, kitty"
      ];

      bindm = [
        # mouse binds
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
      bindl = [
        # system audio
        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ];
    };
  };
}
