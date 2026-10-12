package com.google.appinventor.common.version;

/* loaded from: classes.dex */
public final class GitBuildId {
    public static final String ACRA_URI = "${acra.uri}";
    public static final String ANT_BUILD_DATE = "August 25 2025";
    public static final String GIT_BUILD_FINGERPRINT = "fbf1ed4fc0ef4a31849164fc60fc6b072ff7f822";
    public static final String GIT_BUILD_VERSION = "v185a-2735-gfbf1ed4fc";

    private GitBuildId() {
    }

    public static String getVersion() {
        return GIT_BUILD_VERSION != "" ? GIT_BUILD_VERSION : "none";
    }

    public static String getFingerprint() {
        return GIT_BUILD_FINGERPRINT;
    }

    public static String getDate() {
        return ANT_BUILD_DATE;
    }

    public static String getAcraUri() {
        return "";
    }
}
