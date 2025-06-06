{
  inputs,
  programs,
  config,
  ...
}:

{
  programs = {
    nixcord = {
      enable = true;
      discord.enable = false;
      vesktop.enable = true;
      vesktopConfig = {
        plugins = {
          youtubeAdblock.enable = true;
          spotifyCrack.enable = true;
          userMessagesPronouns.enable = true;
          ircColors.enable = true;
        };
        themeLinks = [
          ""
        ];
      };
    };
  };
}
