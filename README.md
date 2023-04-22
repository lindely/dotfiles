# dunst
Aangepast [kleurenthema](https://github.com/catppuccin/dunst) en vaste iconen.

# environment.d
Omgevingsvariabelen die voor het account moeten gelden. Geen gevoelige gegevens
in plaatsen zoals API-sleutels. Die kunt je in een los bestand zetten en apart
linken.

# hypr
Configuratie voor Hyprland. Gaat uit van de volgende geïnstalleerde onderdelen:
* Iconen: tela-circle-icon-theme-dracula 
([AUR](https://aur.archlinux.org/packages/tela-circle-icon-theme-dracula), 
[GitHub](https://github.com/vinceliuice/Tela-circle-icon-theme))
* GTK-thema: Catppuccin-Mocha-Standard-Yellow-Dark
([GitHub](https://github.com/catppuccin/gtk))
* Cursor: bibata-cursor-theme 
([AUR](https://aur.archlinux.org/packages/bibata-cursor-theme), 
[GitHub](https://github.com/ful1e5/Bibata_Cursor))

Verder worden er diverse applicaties gestart in `exec-once` die veelal
optioneel zijn. Als basis van de configuratie is de setup van prasanthrangan
([GitHub](https://github.com/prasanthrangan)) gebruikt.

# kitty
Aangepast [kleurenthema](https://github.com/catppuccin/kitty), balk onderin
beeld en mapping voor het plakken vanaf het klembord.

# mpd
Configuratie voor pipewire en http-streams. Gaat ervan uit dat de verzameling
in `~/Muziek` staat, bijvoorbeeld gemount of gelinkt naar de bestanden op de
NAS.

# mpv
Schakelt de navigatiebalk bij het spoelen uit.

# neofetch
Gebruikt een zgn. image backend om het Arch-logo vanuit een PNG te renderen.
Dit werkt niet met alle terminals, maar wel met kitty.

# spaceship
Aanvullende configuratie voor
[spaceship](https://github.com/spaceship-prompt/spaceship-prompt).

# swaylock
Overgenomen van [prasanthrangan](https://github.com/prasanthrangan/hyprdots/tree/main/Configs/.config/swaylock).

# swww
Komt met een shell-script dat aangeroepen kan worden om naar een volgende
achtergrond over te schakelen. De volgorde is alfabetisch binnen de directory.
Het script gaat uit van twee monitoren waarbij eentje in landscape werkt en
de ander in portrait. Het script verwacht drie symlinks in de directory
`~/.config/swww`:

1. `wp.dir` - verwijst naar de hoofddirectory van de afbeeldingen.
2. `wp.landscape` - verwijst naar de huidige landscape-afbeelding die actief is.
3. `wp.portrait` - verwijst naar de huidige portrait-afbeelding die actief is.

# vim
Deze moeten in `~/.vim` worden geplaatst. Toepassing van kleurenthema en
tabinstellingen naar 4 spaties.

# wallpaper
* bikini-lip-bite-1.jpg
    * Auteur: ?
    * Bron: https://wallhaven.cc/w/572r73
* bikini-lip-bite-2.jpg
    * Auteur: ?
    * Bron: https://wallhaven.cc/w/y8yv8k
* mizuki.jpg
    * Auteur: 桐野
    * Pixiv: https://www.pixiv.net/en/users/3297691
    * Bron: https://www.pixiv.net/en/artworks/92425338
* Re:01.jpg
    * Auteur: PiPi
    * Pixiv: https://www.pixiv.net/en/users/71334597
    * Bron: https://www.pixiv.net/en/artworks/94238422
* tempest.jpg
    * Auteur: Kagi 鍵
    * Pixiv: https://www.pixiv.net/en/users/30078771
    * Bron: https://www.pixiv.net/en/artworks/102207214
* yuki.jpg
    * Auteur: 桐野
    * Pixiv: https://www.pixiv.net/en/users/3297691
    * Bron: https://www.pixiv.net/en/artworks/85689480
* 光よ！.png
    * Auteur: SurPs
    * Pixiv: https://www.pixiv.net/en/users/14357348
    * Bron: https://www.pixiv.net/en/artworks/104800761
* お別れ.png
    * Auteur: SurPs
    * Pixiv: https://www.pixiv.net/en/users/14357348
    * Bron: https://www.pixiv.net/en/artworks/105827613
* アスナ 🐰 ストリート系.jpg
    * Auteur: NEKOYA (ネコヤ)
    * Pixiv: https://www.pixiv.net/en/users/4119858
    * Bron: https://www.pixiv.net/en/artworks/105025513

# waybar
Schaamteloos gebaseerd op de superschone configuratie van
[prasanthrangan](https://github.com/prasanthrangan/hyprdots/tree/main/Configs/.config/waybar). 
Enkele widgets zijn verwijderd en vervangen met custom widgets voor het 
weergeven van en wisselen tussen toetsenbordlayouts en voor het wisselen
tussen monitor-configuraties (omdat de 7900XTX met 2x120Hz drie keer
zoveel stroomg verbruikt als met 2x60Hz).
