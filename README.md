# batAlert

Never forget to charge your laptop again. Or still forget, but at least this script tried to warn you.

batAlert is a lightweight bash script designed to run in the background as a cron job. It monitors your battery level and pushes a critical desktop notification when your power drops below a defined threshold while discharging.

---

## Prerequisites

The script relies on `notify-send` to push critical GUI warnings to your desktop environment.

**Ubuntu**

```bash
sudo apt-get install notify-osd
```

**Debian:**

```bash
sudo apt-get install libnotify-bin
```

**Other Distributions:**
    Install it via your standard package manager, or visit [vaskovsky.net](https://vaskovsky.net/notify-send/linux.html) for guidance.

---

## Installation & Setup

1. Download or clone the script to your machine.
2. Make it executable:
  ```bash
   chmod +x batAlert.sh
  ```
3. Move the script to a permanent location (e.g., `~/scripts/batAlert.sh`).
4. Open your crontab configuration:
  ```bash
   crontab -e
  ```
5. Add the following line to run the script every minute (make sure to replace `/path/to/` with your actual directory path):
  ```bash
   * * * * * /path/to/batAlert.sh >> /tmp/battery.log
  ```

---

## Configuration

By default, the script will trigger an alert when your battery hits **10%**. You can adjust this by opening `batAlert.sh` and editing the `THRESHOLD` variable on line 9:

```bash
THRESHOLD="10" # Change this to your preferred percentage
```

---

Free to use. Open source. Lovely.