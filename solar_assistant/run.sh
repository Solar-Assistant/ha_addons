#!/usr/bin/with-contenv bashio
set -euo pipefail

VERSION=$(bashio::addon.version)
DEST=/homeassistant/custom_components/solar_assistant
ZIP=/tmp/solar_assistant.zip
STAGE=/tmp/sa

bashio::log.info "Installing SolarAssistant integration v${VERSION}..."

curl -fsSL \
    "https://github.com/Solar-Assistant/ha_solar_assistant/releases/download/v${VERSION}/solar_assistant.zip" \
    -o "${ZIP}"

rm -rf "${STAGE}"
unzip -q "${ZIP}" "custom_components/solar_assistant/*" -d "${STAGE}"

mkdir -p /homeassistant/custom_components
rm -rf "${DEST}"
cp -r "${STAGE}/custom_components/solar_assistant" "${DEST}"
rm -rf "${STAGE}" "${ZIP}"

bashio::log.info "Done. Restarting Home Assistant Core..."
bashio::core.restart
