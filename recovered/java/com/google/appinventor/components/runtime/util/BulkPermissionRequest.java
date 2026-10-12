package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BulkPermissionRequest {
    private String caller;
    private String[] permissions;
    private Component source;

    public abstract void onGranted();

    public BulkPermissionRequest(Component component, String str, String... strArr) {
        this.source = component;
        this.caller = str;
        this.permissions = strArr;
    }

    public void onDenied(String[] strArr) {
        Form form = (Form) this.source.getDispatchDelegate();
        for (String str : strArr) {
            form.dispatchPermissionDeniedEvent(this.source, this.caller, str);
        }
    }

    public final List<String> getPermissions() {
        ArrayList arrayList = new ArrayList(this.permissions.length);
        Collections.addAll(arrayList, this.permissions);
        return arrayList;
    }
}
