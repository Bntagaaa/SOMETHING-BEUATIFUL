package com.google.appinventor.components.common;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;

/* loaded from: classes.dex */
public enum ComponentCategory {
    USERINTERFACE("User Interface"),
    LAYOUT("Layout"),
    MATERIAL("Material Components"),
    MEDIA("Media"),
    ANIMATION("Drawing and Animation"),
    MAPS("Maps"),
    CHARTS("Charts"),
    EXTRAS("Extras"),
    DATASCIENCE("Data Science"),
    FIREBASE("Firebase"),
    SENSORS("Sensors"),
    SOCIAL("Social"),
    STORAGE("Storage"),
    CONNECTIVITY("Connectivity"),
    MONETIZATION("Monetization"),
    LEGOMINDSTORMS("LEGO® MINDSTORMS®"),
    EXPERIMENTAL("Experimental"),
    EXTENSION("Extension"),
    FUTURE("Future"),
    INTERNAL("For internal use only"),
    UNINITIALIZED("Uninitialized");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3529b;

    /* renamed from: a, reason: collision with root package name */
    public final String f3530a;

    static {
        HashMap map = new HashMap();
        f3529b = map;
        map.put("User Interface", "userinterface");
        map.put("Layout", "layout");
        map.put("Material Components", "material");
        map.put("Media", "media");
        map.put("Drawing and Animation", "animation");
        map.put("Maps", "maps");
        map.put("Charts", "charts");
        map.put("Extras", "extras");
        map.put("Data Science", "datascience");
        map.put("Firebase", "firebase");
        map.put("Sensors", "sensors");
        map.put("Social", NotificationCompat.CATEGORY_SOCIAL);
        map.put("Storage", "storage");
        map.put("Connectivity", "connectivity");
        map.put("Monetization", "monetization");
        map.put("LEGO® MINDSTORMS®", "legomindstorms");
        map.put("Experimental", "experimental");
        map.put("Extension", "extension");
        map.put("Future", "future");
    }

    ComponentCategory(String str) {
        this.f3530a = str;
    }

    public String getName() {
        return this.f3530a;
    }

    public String getDocName() {
        return (String) f3529b.get(this.f3530a);
    }
}
