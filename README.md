# dotfiles
Persoonlijke collectie van configuraties voor mijn Linux-desktops. Voor
GTK-applicaties wordt het [Layan-thema](https://github.com/vinceliuice/Layan-gtk-theme)
gebruikt. Voor overige applicaties heb ik zelf de kleuren van Layan naar
eigen smaak doorgevoerd.

* Icons: [Tela-dark-blue](https://www.pling.com/p/1279924/)

## alacritty
Locatie: `~/.config/alacritty`

Enkel het lettertype wordt ingesteld (`nerd-fonts-jetbrains-mono`).

## bspwm
Locatie: `~/.config/bspwm`

Bevat twee monitorconfiguraties. Als de hostnaam van de computer `iris` is 
wordt de multiheadconfiguratie gebruikt (package `core/inetutils` vereist).
Het script maakt gebruik van omgevingsvariabelen `X_CPU_HWMON` en `X_GPU_HWMON`
die op basis van de hostname worden gezet. Dit voor de informatie voor cpu-
en gpu-temperatuur in polybar. Zoek de juiste sensors op via:

```
for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*})) $(readlink -f $i)"; done
```

De configuratie gaat ervan uit dat de volgende programma's zijn geïnstalleerd:

* `dunst` - Notificatiedaemon.
* `picom` - Compositor voor effecten als schaduw en transparantie.
* `polybar` - Multifunctionele balk.
* `sxhkd` - Sneltoetsdaemon.
* `xwallpaper` - Om de achtergrond in te stellen
  * In de directory `wallpapers` staan achtergronden die gebruikt worden. De
    configuratie gaat ervan uit dat deze in `~/Pictures/Wallpapers` staan.

## dunst
Locatie: `~/.config/dunst`

Eigen kleurenpalet en positionering voor `dunst`.

## firefox
[thema](https://color.firefox.com/?theme=XQAAAAK7AQAAAAAAAABBKYhm849SCia-yK6EGccwS-xMDPr7thdS1H-qV5BVnLNCChVZ6vJkpjpp2yrYSSLuEzUiQC_HnxO7FwSw8KyEvdqTpGYOY5SyntEu2PGhYCwBqF6QGJYdGxl_gYLiRUK_s9rqHf45jCSY8Mwqz78nl8Xz8umbK-VJesxUAb-4nBlzK1c5dsRIq09fCBsAblTbjCiyN9AkgQJsL92unBv_ScekQvIwQQkiatwKMX6ZOdXWZuH-Ok2W7ROrgYYKAXOALE4Hk7p1duMnGd5G-XvUBUdcaoFXTS1AbzfaK13b9EG0Av9ndc4A)

## ncmpcpp
Locatie: `~/.config/ncmpcpp`

Kopieer het bestand `config` naar de directory van ncmpcpp. De configuratie
maakt gebruik van een script dat de albumcover weergeeft naast de afspeellijst.
Hiervoor is [ncmpcpp-ueberzug](https://github.com/tam-carre/ncmpcpp-ueberzug)
nodig. Het shellscript waarmee ncmpcpp moet worden gestart is ook opgenomen
in deze repo, omdat de eigen instellingen in dit script moeten worden
geplaatst.

Zowel config als shellscript moeten bewerkt worden om aan te sluiten op de
eigen paden van de muziekbibliotheek. Als het cover-script niet gebruikt
moet worden kan de regel in `config` waar `execute_on_song_change` staat
verwijderd worden.

## picom
Locatie: `~/.config/picom`

## polybar
Locatie: `~/.config/polybar`

Scripts binnen de polybar-directory komen van derden en bevatten hun eigen
LICENSE in de bestanden zelf.

Als basis van de configuratie is die van 
[raven2cz](https://github.com/raven2cz/polybar-config) genomen en naar eigen
smaak uitgewerkt.

Afhankelijkheden om verbatim te kunnen gebruiken:
* mpd
* `nerd-fonts-roboto-mono`, `ttf-roboto`, `ttf-mplus`.
* [polybar-pulseaudio-control](https://github.com/marioortizmanero/polybar-pulseaudio-control)
  * pactl
  * pavucontrol
* python3
  * API-sleutel voor [OpenWeatherMap](https://www.openweathermap.org)

Voor OpenWeatherMap moet een API-sleutel gedefinieerd worden:

```
echo "weather_api_key='YOUR_API_KEY'" > ~/.config/polybar/scripts/weather_settings.py
```

## qt5ct
Locatie: `~/.config/qt5ct`

Een zelf samengesteld kleurenpalet wordt gebruikt via de applicatie `qt5ct`. 
Het symlinken van de subdirectory `colors` volstaat hierbij. Om applicaties 
gebruik te laten maken van de instellingen van qt5ct moet de juiste 
omgevingsvariabele ingesteld worden:

```
export QT_QPA_PLATFORMTHEME=qt5ct
```

In `qt5ct` moet het aangepaste kleurenschema worden gekozen: **lindely**. De
extra stijlbladen moeten ook geactiveerd worden.

## sxhkd
Locatie: `~/config/sxhkd`

Globale sneltoetsen binnen bspwm. De volgende programma's kunnen worden
aangeroepen en dienen derhalve geïnstalleerd te zijn:

* alacritty
* dmenu
* dunst
* firefox
* dolphin
* pactl
* mpc
* backlight_control (enkel bij single-headed setup)

In de `scripts`-directory bevindt zich een custom script dat wordt gebruikt
om `pactl` aan te roepen voor volumebeheer en notificatie via `dunst`.

## SpaceVim.d
Locatie: `~/.SpaceVim.d`

Eigen configuratie voor SpaceVim. Maakt gebruik van het jellybeans-thema
dat met SpaceVim wordt geleverd.
