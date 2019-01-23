/**
 * Copy this file to <Firefox_Profile>/user.js
 *
 * References:
 * - https://github.com/pyllyukko/user.js
 * - https://github.com/ghacksuserjs/ghacks-user.js
 */

// Better first time experience for advance user
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("browser.startup.page", 3);

// Better defaults
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("privacy.donottrackheader.enabled", true);
// user_pref('browser.newtabpage.enabled', false)
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.searchSuggestionsChoice", false);

// Disable update checks
user_pref("app.update.auto", false);
user_pref("browser.search.update", false);
user_pref("extensions.update.autoUpdateDefault", false);
// user_pref('extensions.update.enabled', false)
// user_pref('extensions.update.notifyUser', false)
user_pref("browser.search.update", false);

// Disable sending reports
user_pref("datareporting.healthreport.infoURL", "");
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.policy.firstRunURL", "");
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.cachedClientID", "");
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.hybridContent.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabledFirstSession", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);

// Don't tell Google about every site I visit
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("services.sync.prefs.sync.browser.safebrowsing.malware.enabled", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);

// Don't send my query until I hit Enter
// user_pref('browser.search.suggest.enabled', false)

// Don't let sites auto-refresh
user_pref("accessibility.blockautorefresh", true);

// PREF: Disable Service Workers
user_pref("dom.serviceWorkers.enabled", false);
// PREF: Disable web notifications
user_pref("dom.webnotifications.enabled", false);
// PREF: Disable DOM timing API
user_pref("dom.enable_performance", false);
// PREF: Make sure the User Timing API does not provide a new high resolution timestamp
user_pref("dom.enable_user_timing", false);
// PREF: Disable Location-Aware Browsing (geolocation)
user_pref("geo.enabled", false);
// PREF: When geolocation is enabled, use Mozilla geolocation service instead of Google
user_pref("geo.wifi.uri", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
// PREF: When geolocation is enabled, don't log geolocation requests to the console
user_pref("geo.wifi.logging.enabled", false);
// PREF: Disable leaking network/browser connection information via Javascript
// Network Information API provides general information about the system's connection type (WiFi, cellular, etc.)
user_pref("dom.netinfo.enabled", false);
// PREF: Disable battery API (Firefox < 52)
user_pref("dom.battery.enabled", false);
// PREF: Disable "beacon" asynchronous HTTP transfers (used for analytics)
user_pref("beacon.enabled", false);
// PREF: Disable speech recognition
user_pref("media.webspeech.recognition.enable", false);
// PREF: Disable sensor API
user_pref("device.sensors.enabled", false);
// PREF: Disable pinging URIs specified in HTML <a> ping= attributes
user_pref("browser.send_pings", false);
// PREF: Disable gamepad API to prevent USB device enumeration
user_pref("dom.gamepad.enabled", false);
// PREF: Disable virtual reality devices APIs
user_pref("dom.vr.enabled", false);
// PREF: Disable vibrator API
user_pref("dom.vibrator.enabled", false);
/* 0502: disable Mozilla permission to silently opt you into tests ***/
user_pref("network.allow-experiments", false);
/* 0518: disable Web Compatibility Reporter [FF56+]
 * Web Compatibility Reporter adds a "Report Site Issue" button to send data to Mozilla ***/
user_pref("extensions.webcompat-reporter.enabled", false);
