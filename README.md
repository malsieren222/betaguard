# BetaGuard
 
**Motion-triggered monitoring and alerting system for Linux.**
 
BetaGuard uses [Motion](https://motion-project.github.io/) to detect movement via camera, then automatically sends real-time notifications — both an email (with captured media attached) and a phone call via ADB to a connected Android device.
 
Designed as a modular component for a larger home/location security network, where multiple Linux machines act as sensors linked together.
 
## How It Works
 
1. Motion detects movement and saves media (JPEG, AVI) to a local directory
2. `betaguard.sh` picks up the event and triggers `alert.sh`
3. An email with all captured media is sent to the configured address
4. A phone call is placed to the configured number via ADB (Android Debug Bridge)
 
## Requirements
 
- **Motion** — `sudo apt-get install motion`
- An Android device connected via ADB (USB or network)
 
## Setup
 
1. Rename `alert2.sh` to `alert.sh`
2. Edit the paths at the top of both `betaguard.sh` and `alert.sh`
3. In `alert.sh`, configure your email sender credentials
4. In `betaguard.sh`, add your phone number
5. Ensure your Android device is connected with USB debugging enabled
   - If using dual SIM, set the default calling SIM
   - On first connection, approve the ADB authorization prompt on the device
   - Define the calling app for ADB (e.g. "Phone", "Skype")
 
## Configuration
 
Motion's config file is located at `/etc/motion/motion.conf`. Default settings work fine — you may want to increase the framerate from 2 to 8–10 fps.
 
Make sure the Motion media folder matches the path set in `alert.sh` (default: `/etc/lib/motion/`).
 
## Tech
 
`Bash` · `Motion` · `ADB` · `Linux`
 
