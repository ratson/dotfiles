extend:
  yadm:
    pkg:
      - name: yadm-git

i3:
  pkg.group_installed:
    - require:
      - pkg: rofi
      - pkg: xterm

firefox:
  pkg.installed:
    - require:
      - pkg: noto-fonts-cjk

lightdm:
  service.disabled

gdm:
  pkg.installed: []
  service.running:
    - enable: True
    - require:
      - pkg: gdm
      - service: lightdm

nodejs:
  pkg.installed

noto-fonts-cjk:
  pkg.installed

pacaur:
  pkg.installed

rofi:
  pkg.installed

xterm:
  pkg.installed
