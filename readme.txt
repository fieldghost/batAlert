Flow-state in the terminal.
Laptop on the lap.
Many lines of codes.
Laptop dies... no power.
Forgot to charge...
AAARGH!

batAlert is a (very) simple bash script that you run as a cron job.
It's sole purpose is to warn you about low battery on your device.

Requirements:
notify-send (Used to push the critical gui warning to your beautiful eyes)
    Ubuntu
        sudo apt-get install notify-osd
    Debian
        apt-get install libnotify-bin
    Something else?
        Please find it and install it
            https://vaskovsky.net/notify-send/linux.html

Install and Magic:
    1. Download script
    2. run "chmod +x batAlert.sh"
    3. Update your crontab line
        1. crontab -e in terminal
        2. Add "* * * * * /path/to/the/lovely/script/batAlert.sh >> /tmp/battery.log"
    4. Magic

Wanna tweak it?
THRESHOLD variable (line 9) can be adjusted. Set to 10

Wanna improve it?
Please do. I'm not that good at bash (yet)
