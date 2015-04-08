// Better first time experience for advance user
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("browser.startup.page", 3);

// Better defaults
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("browser.newtabpage.enabled", false);

// Disable update checks
user_pref("app.update.enabled", false);
user_pref("browser.search.update", false);
user_pref("extensions.update.autoUpdateDefault", false);
user_pref("extensions.update.enabled", false);
user_pref("extensions.update.notifyUser", false);

// Disable sending reports
user_pref("browser.selfsupport.url", "");
user_pref("datareporting.healthreport.enabled", false);
user_pref("datareporting.healthreport.service.firstRun", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.prompted", 2);
user_pref("toolkit.telemetry.rejected", true);
