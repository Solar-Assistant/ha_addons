#!/usr/bin/with-contenv bashio

VERSION=$(bashio::addon.version)
DEST=/homeassistant/custom_components/solar_assistant
ZIP=/tmp/solar_assistant.zip

bashio::log.info "Installing SolarAssistant integration v${VERSION}..."

curl -fsSL \
    "https://github.com/Solar-Assistant/ha_solar_assistant/releases/download/v${VERSION}/solar_assistant.zip" \
    -o "${ZIP}"

rm -rf "${DEST}"
mkdir -p /homeassistant/custom_components
unzip -q "${ZIP}" "custom_components/solar_assistant/*" -d /tmp/sa
cp -r /tmp/sa/custom_components/solar_assistant "${DEST}"

bashio::log.info "Done. Restarting Home Assistant Core..."
bashio::core.restart
