# Termix Home Assistant Add-on Repository

## Description
This repository contains a Home Assistant add-on for Termix, a web-based SSH client that allows you to manage SSH connections directly from your browser.

## Installation

1. Open Home Assistant
2. Go to **Settings > Add-ons > Add-on Store**
3. Click the three-dot menu in the top right and select **Repositories**
4. Add the URL of this repository
5. Install the **Termix** add-on from the add-on store

## Add-ons

### Termix
A web-based SSH client. Accessible at `http://<home_assistant_ip>:8089` after starting the add-on.

Since this add-on uses `host_network: true`, it has full access to the host network stack, meaning it can reach all devices on your tailnet if you are running the Tailscale add-on.
