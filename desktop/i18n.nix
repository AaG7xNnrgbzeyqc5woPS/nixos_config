{ config, pkgs, ... }:

{
  i18n = {
    defaultLocale = "zh_CN.UTF-8";
    supportedLocales = [ "zh_CN.UTF-8/UTF-8" "en_US.UTF-8/UTF-8" ];

#    This config is very ok! 
#    Already tested!     
#    - 2021.9.18
    inputMethod = {
      enabled = "fcitx5";
      fcitx5.addons = [ pkgs.fcitx5-chinese-addons ];
    };

#   Test OK!   
#   but need config input method at gnome desktop  after system restart 
#   - 2021.9.18
#    inputMethod = {
#      enabled = "fcitx";
#      fcitx.engines = with pkgs.fcitx-engines; [
#        libpinyin
#      ];
#    };
#   Need config at gnome after system restart! so Bad bug!

  };

  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  location = {
    latitude = 23.0;
    longitude = 113.0;
  };
}
