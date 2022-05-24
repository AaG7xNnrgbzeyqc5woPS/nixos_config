{ config, pkgs, ... }:

{
  # NixOS 中文字体输入法
  # https://zhuanlan.zhihu.com/p/463403799
  i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.supportedLocales = [ "zh_CN.UTF-8/UTF-8" "en_US.UTF-8/UTF-8" ];

  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      noto-fonts
#      noto-fonts-cjk-sans
#      noto-fonts-cjk-serif
      sarasa-gothic  #更纱黑体
      source-code-pro
      hack-font
      jetbrains-mono
    ];
  };


  i18n.inputMethod = {
    # enabled = "fcitx5";
    # fcitx5.addons = with pkgs; [
    #   fcitx5-rime
    #   fcitx5-chinese-addons
    # ];

    # 我现在用 ibus
    enabled = "ibus";
    ibus.engines = with pkgs.ibus-engines; [
      libpinyin
      rime
    ];
  };


  
#    This config is very ok! 
#    Already tested!     
#    - 2021.9.18
#    Update to nixos 21.11, Now, 放弃! 
#    - 2022.5.24
#    i18n.inputMethod = {
#      enabled = "fcitx5";
#      fcitx5.addons = [ pkgs.fcitx5-chinese-addons ];
#    };

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

 

  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  location = {
    latitude = 23.0;
    longitude = 113.0;
  };
}
