{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "ffmpeg-3.4.8"
    "libav-12.3"
    "electron-14.2.9"
  ];
    


#---------------------------------------------------------
# https://search.nixos.org/packages
# https://linux.cn/article-10099-1.html
# 《75 个最常用的 Linux 应用程序（2018 年）》
#--------------------------------------------------------
# https://www.linuxlinks.com/best-free-open-source-software/
#-------------------------------------------------------

  environment.systemPackages = with pkgs; 
  [
    # Utils for hardware to raspberry pi
    etcher  # 注意，appimage-run Appimage_for_Etcher Error!
            # Enter  "etcher" in cli, write image to usb   
    ntfs3g  # FUSE-based NTFS driver with full write support

    # Utils
    hello
    htop
    neofetch
    screenfetch

    usbutils
    pciutils
    tree
    cifs-utils
 
#    python39Packages.py-cpuinfo    

    ping
/*  暂时用不到
    pingtcp
    gping
    ioping
    arping

    sshping
    dhcping
    prettyping
    smokeping  #https://oss.oetiker.ch/smokeping/
*/
#    speedometer  # 安装不上，似乎提示python 2.7版本不兼容



    dig
    traceroute
/*
    fakeroute
    tcptraceroute
    tracebox
    hdparm
    speedtest-cli
*/

    vim
    nano
    tmux
    wget
    curl
    ffmpeg #提示不安全
    patchelf
    git
    zip
    unzip
    zlib
    unrar

    # apps
    firefox
    google-chrome
#    googleearth-pro
#    gcc
#    gdb
#    gh
#    vscode
     vscode-fhs
#    keepass # 打包后对控件的支持不好，而且不是linux原生，现在迁移到keepassxc非常满意，符合本人全部的需求，特别是原生支持topt
    
    # https://search.nixos.org/packages?channel=21.11&show=dotnet-sdk_5&from=0&size=50&sort=relevance&type=packages&query=net+5
    # https://dotnet.microsoft.com/en-us/

#    dotnet-sdk_5 # dotnet build

    keepassxc  #好用，取代keepass！
    docker-compose
    #podman-compose
    appimage-run

#    gnome.gnome-boxes


    # Learning English
    anki  # https://www.linuxlinks.com/Flashcard/
    #rPackages.rosetta
#    syncthing  # 暂时不用，这个很好用，暂时不需要，多个设备同步。   
    nextcloud-client
#    birdtray  #用不了，启动后提示出错
#    thunderbird

    skypeforlinux
    teams
    zoom-us
    
    #电子书管理软件
    calibre
    calibre-web

    
#    pidgin
#    pidgin-skypeweb
#    skype4pidgin
 #   purple-slack
 #   purple-discord
 #   telegram-purple
 #   toxprpl
 #   purple-matrix
    

#    ledger-live-desktop #版本有些老，使用官方网站上下载的imageapp代替, appimage-run 命令启动，经过测试，程序运行良好，非常满意

   # p2p Download
/*
   aria
   qbittorrent
   amule
*/

# --------- games ----------------
   #steam  #可以打开，没有steam帐号，就没有再试下去
   #minecraft  #
   #cataclysm-dda  #大灾难，不会玩，可以启动程序

   #rPackages.ROpenDota  #安装后，没有见到快捷方式入口
   # rPackages.RDota2  #安装后，没有见到快捷方式入口
   # rPackages.opendotaR #安装后，没有见到快捷方式入口  
  
   #alienarena #无法安装，看不到快捷方式，没有安装上，bad! 

   # 0AD， linux中的帝国时代，manjaro中可以玩，这里只是能安装上，有启动链接，但是点了无反应，无法出现启动窗口
   # 建议弃用该版本  
   #zeroadPackages.zeroad-unwrapped  # bad
   #zeroadPackages.zeroad-data       # bad
   
#--------  以下游戏经过测试，证实可以安装成功，并且可以启动的 ------------
   # 0AD 
   # A free, open-source game of ancient warfare
   # 试用了，完全可以打开，界面还是一样的。没有时间进行更多的测试，有空打几局看看。 
   #zeroad

   # OpenRA release 2019.03.14
   # https://www.openra.net/
   # nixpkgs支持很好，试了openRA - Red Alert,还是相当不错的，偶尔会漰溃，假死更多点，等下就可以
   # OpenRA 系列 一起有4个游戏， Red Alert是其中最知名的， 下面一个包将这个4个游戏都安装了， very nice!
   openra 

   #superTuxKart  #赛车游戏，非常漂亮，已经测试过了，可以玩

#-------------------------------------------------------------------------
  #教学软件
  libsForQt5.ktouch  # Linux打字练习软件 https://www.linuxmi.com/linux-apps-10.html
  tipp10  # https://www.linuxlinks.com/TypingTutors/
  klavaro # https://www.linuxlinks.com/TypingTutors/
#------------------------------------------------------
/*  https://www.linuxlinks.com/Astronomy/
天文学是一门研究恒星、小行星、彗星、卫星、流星雨等天体的科学。它十分适合业余爱好者，没有年龄限制，没有贫贱之分。在这门学科中，业余爱好者常常能发现专业人士未注意到的奇妙现象，他们能帮助观测恒星和跟踪小行星。只凭借肉眼我们也能去观测夜空中的无数星星。
Linux平台上有大量天文学软件，能为天文学业余爱好者提供有用的工具，帮助绘制夜空地图，制定详细观测计划，控制望远镜和星图等。
Linuxlinks编辑了八款优秀的Linux天文学软件，包括：虚拟天文馆Stellarium，月球观测软件Virtual Moon Atlas，太空模拟软件Celestia，美国自然历史博物馆和NASA开发的数字宇宙Digital Universe Atlas，Skychar等等。
Stellarium：一款虚拟天文馆软件
Virtual Moon Atlas：一款实时月球观测软件
Celestia：一款实时太空模拟软件
Digital Universe Atlas：独立4维太空可视化程序
Skychart：一款免费的开源星图软件
Where is M13? ：一款三维的银河地图
KStars：KStars是KDE下的一个天象图程序，它提供了一套夜空中星象的图形化仿真，无论你在在地球的任何位置，任何时间都可以通过它看到相当准确的天象。
ORSA：ORSA是一个支持交互操作的天体力学工具，可以对小行星、彗星、人造卫星、太阳和太阳系外的行星系统进行模拟和分析。它功

# https://www.linuxlinks.com/Astronomy/
*/
   celestia
   stellarium
  
#---------------------------------
#  https://www.linuxlinks.com/EducationalGames/
  gcompris  # A high quality educational software suite, including a large number of activities for children aged 2 to 10
  colobot   # Colobot: Gold Edition is a real-time strategy game, where you can program your bots
  pianobooster #A MIDI file player that teaches you how to play the piano  

  # 媒体播放
  #kodi 可以装，用不上

  # 第二大脑，知识图谱管理
  #  obsidian， # 下载 appimage 格式最新版可以用。这个nixos版本有些老

  #匿名网络
  #tor
  
  ];

#------------------------------------------------------------

 # https://search.nixos.org/packages

  # open hardware.ledger.enable = true;
  hardware.ledger.enable = true;
  # 另外一个方案, 打开 udev rules provided by ledger
  #Just add the option
  # services.udev.packages = with pkgs; [ ledger-udev-rules ];
  #to your NixOS config, this will enable the udev rules provided by ledger !




}
