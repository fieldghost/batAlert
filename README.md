# batAlert

> Flow-state in the terminal.
> Laptop on the lap.
> Many lines of codes.
> Laptop dies... no power.
> Forgot to charge...
> AAARGH!

**batAlert** is a (very) simple bash script that you run as a cron job. Its sole purpose is to warn you about low battery on your device.

---

## Requirements

The script requires `notify-send` to push the critical GUI warning to your beautiful eyes.

* **Ubuntu**
    ```bash
    sudo apt-get install notify-osd
    ```
* **Debian**
    ```bash
    sudo apt-get install libnotify-bin
    ```
* **Something else?**
    Please find it and install it via your package manager, or visit [vaskovsky.net](https://vaskovsky.net/notify-send/linux.html) for more information.

---

## Install and Magic

1. Download the script.
2. Make it executable:
   ```bash
   chmod +x batAlert.sh
   ```
3. Update your crontab line:
   * Open your crontab file in the terminal:
     ```bash
     crontab -e
     ```
   * Add the following line (make sure to replace the path with your actual script path):
     ```bash
     * * * * * /path/to/the/lovely/script/batAlert.sh >> /tmp/battery.log
     ```
4. Magic! 

---

## Wanna tweak it?

The `THRESHOLD` variable (line 9) can be adjusted. It is set to `10` by default.

## Wanna improve it?

Please do! I'm not that good at bash (yet).
