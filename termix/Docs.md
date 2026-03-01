# Termix Add-on

## Description
Termix is a web-based SSH client that allows you to manage and connect to SSH hosts directly from your browser.

## Installation
1. Add this repository to your Home Assistant add-on store
2. Install the Termix add-on
3. Start the add-on
4. Access the web UI at `http://<home_assistant_ip>:8089`

## Notes
- This add-on uses host networking, meaning it can reach all devices accessible from the Home Assistant host, including Tailscale tailnet and subnet devices.
- SSH credentials are stored in the add-on's data folder.
