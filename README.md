
# SDDM SteamOS Theme for SteamFork
A modified version of [MarianArlt's Sugar Dark theme for Simple Desktop Display Manager (SDDM)](https://github.com/MarianArlt/sddm-sugar-dark). 

Created for desktop mode of [SteamFork](https://github.com/theVakhovskeIsTaken/steamfork). Based on the aesthetic of Valve's Steam platform.

> [!IMPORTANT]
> This theme is suitable for Plasma 6.

<br>
<br>

## Table of Contents
<!-- * [Dependencies](https://github.com/JiayuanWen/steamfork-sddm-steamos-theme#dependencies) -->
* [Installing the theme](https://github.com/JiayuanWen/steamfork-sddm-steamos-theme#installing-the-theme)
* [Legal Notice](https://github.com/JiayuanWen/steamfork-sddm-steamos-theme#legal-notice)
* [Motivate a developer](https://github.com/JiayuanWen/steamfork-sddm-steamos-theme#motivate-a-developer)
<br>

<!-- ## Dependencies

* [`sddm (Version >= 0.18.0)`](https://github.com/sddm/sddm)
* [`qt5 (Version >= 5.11.0)`](http://doc.qt.io/qt-5/index.html) 
* [`qt5-quickcontrols2 (Version >= 5.11.0)`](http://doc.qt.io/qt-5/qtquickcontrols2-index.html) 
* [`qt5-svg (Version >= 5.11.0)`](https://doc.qt.io/qt-5/qtsvg-index.html) -->

## Installing the theme

[Download the tar archive](https://github.com/JiayuanWen/steamfork-sddm-steamos-theme/releases) then extract the contents to the theme directory of SDDM:
```
$ sudo tar -xzvf /Path/To/Your/steamfork-sddm-steamos-theme.tar.gz -C /usr/share/sddm/themes
```
This will extract all the files to a folder called "steamfork-sddm-steamOS" inside of the themes directory of SDDM.  

After that, you will have to point SDDM to the new theme by editing its config file with your favorite editor
```
sudo <editor> /etc/sddm.conf.d/sddm.conf
```
If sddm.conf doesn't exist, create one.

Find following lines (Add if file is empty).
```
[Theme]
Current=
```
Set `Current=` to `Current=steamfork-sddm-steamos`.

You can take a look at the default config file of SDDM for reference: `/usr/lib/sddm/sddm.conf.d/default.conf`.  

<!--
### (Optional) Enable background changing

Background can be made to change after each boot with the backgroundChanger.sh script in the theme folder. To enable this feature, first make sure the script is executable.
```
$ sudo chmod +x /usr/share/sddm/themes/sugar-steamOS/backgroundChanger.sh
```
Now, edit the script with your favorite editor (vim/nano/kwrite/gedit/etc...)
```
$ sudo <editor> /usr/share/sddm/themes/sugar-steamOS/backgroundChanger.sh
```
Find the variable `ROOTPASSWORD` and set it to your sudo/root password. Save the file afterward.

Make backgroundChanger.sh autostart on boot or after login. Depending on your DE, you might have an app or feature that manages startup applications (Ex. KDE Plasma has Autostart, Cinnamon has Startup Application, XFCE has Session and Startup), add a new startup app with path to `usr/share/sddm/themes/sugar-steamOS/backgroundChanger.sh`. If you don't have such, you can follow [this tutorial](https://www.baeldung.com/linux/run-script-on-startup) on how to set up a startup script/application.
-->

## For Developers
This section contains information developers or anyone seeking to make changes to this project may want to know.

This project contains two bash scripts:
* `sddmtest`: This script starts the theme preview. You do not need to install the theme on your system to preview.
* `make`: This script pack the theme into a `tar.gz` archive for sharing or distribution.


<br>
<br>

### Legal Notice

Copyright (C) 2025 [SteamFork](https://github.com/SteamFork).

Copyright (C) 2018 [Marian Arlt](https://github.com/MarianArlt).  

SteamOS Theme is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  

SteamOS Theme is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.  

You should have received a copy of the GNU General Public License along with Sugar Dark. If not, see <https://www.gnu.org/licenses/>.

This project is not affiliated with Valve Corporation. All imagery associated with Valve and Steam, including logos, fonts, styles, and naming, belong to [Valve, LLC](https://www.valvesoftware.com/en/). 

