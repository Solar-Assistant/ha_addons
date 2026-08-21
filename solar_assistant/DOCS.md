# SolarAssistant

Installs the [SolarAssistant](https://github.com/Solar-Assistant/ha_solar_assistant) Home Assistant integration.

> **Note:** Home Assistant Core will be restarted after installation so the integration is loaded. How long that takes depends entirely on your hardware and how many integrations you run - a minute or so on a fast machine, but it can take longer on a Raspberry Pi or a large configuration. Start the add-on at a convenient time and let the restart finish.

## Usage

1. Install this add-on and click **Start**.
2. Home Assistant Core will be restarted after installation. Wait for it to come back online.
3. Go to **Settings → Devices & Services → Add integration** and search for **SolarAssistant**.

## Updates

To update the integration, upgrade this add-on to the new version and start it again. It will overwrite the previous installation and restart Core.

## Removing the integration

Uninstalling this add-on does **not** remove the integration. The add-on copies the integration into your configuration directory and then stops; those files stay behind, and Home Assistant keeps loading them. To remove it:

1. Remove the SolarAssistant integration under **Settings → Devices & Services**.
2. Stop and uninstall this add-on.
3. Delete the `custom_components/solar_assistant` folder from your Home Assistant configuration directory.
4. Restart Home Assistant Core.
