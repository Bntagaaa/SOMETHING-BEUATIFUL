package com.google.appinventor.components.annotations;

/* loaded from: classes.dex */
public enum PropertyCategory {
    BEHAVIOR("Behavior"),
    APPEARANCE("Appearance"),
    DEPRECATED("Deprecated"),
    UNSET("Unspecified"),
    APPLICATION("Application"),
    ADVANCED("Advanced"),
    GENERAL("General"),
    THEMING("Theming"),
    PRIVACY("Privacy"),
    CREDENTIALS("Credentials"),
    PUBLISHING("Publishing");


    /* renamed from: a, reason: collision with root package name */
    public final String f3502a;

    PropertyCategory(String str) {
        this.f3502a = str;
    }

    public String getName() {
        return this.f3502a;
    }
}
