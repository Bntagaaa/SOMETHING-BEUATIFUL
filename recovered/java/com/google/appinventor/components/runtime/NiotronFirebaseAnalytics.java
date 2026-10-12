package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.firebase.analytics.FirebaseAnalytics;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WAKE_LOCK, com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")
@DesignerComponent(category = ComponentCategory.FIREBASE, description = "Google Analytics is an app measurement solution, available at no charge, that provides insight on app usage and user engagement.", iconName = "images/niotronFirebaseAnalytics.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "firebase-analytics.aar, firebase-analytics.jar, play-services-measurement-api.aar, play-services-measurement-api.jar, firebase-installations.aar, firebase-installations.jar, firebase-common.aar, firebase-common.jar, play-services-measurement.aar, play-services-measurement.jar, play-services-measurement-sdk.aar, play-services-measurement-sdk.jar, play-services-measurement-impl.aar, play-services-measurement-impl.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, play-services-stats.aar, play-services-stats.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, firebase-components.aar, firebase-components.jar, annotation.jar, firebase-annotations.jar, javax.inject.jar")
/* loaded from: classes.dex */
public final class NiotronFirebaseAnalytics extends AndroidNonvisibleComponent {
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    FirebaseAnalytics firebaseAnalytics;

    public NiotronFirebaseAnalytics(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
        this.context = componentContainer.$context();
        this.container = componentContainer;
        if (componentContainer.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
        } else {
            this.firebaseAnalytics = FirebaseAnalytics.getInstance(this.context);
        }
    }

    @SimpleEvent
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleFunction(description = "Log a single Event to Firebase")
    public void LogEvent(String str, String str2, String str3) {
        if (this.container.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(str2, str3);
        this.firebaseAnalytics.logEvent(str, bundle);
    }

    @SimpleFunction(description = "Log multiple Events to Firebase")
    public void LogEvents(String str, YailList yailList, YailList yailList2) {
        if (this.container.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
            return;
        }
        Bundle bundle = new Bundle();
        for (int i = 1; i <= yailList.size(); i++) {
            String string = "";
            String string2 = yailList.getString(i) == null ? "" : yailList.getString(i);
            if (yailList2.getString(i) != null) {
                string = yailList2.getString(i);
            }
            bundle.putString(string2, string);
        }
        this.firebaseAnalytics.logEvent(str, bundle);
    }

    @SimpleFunction(description = "Set Properties for the Individual User")
    public void SetUserProperty(String str, String str2) {
        if (this.container.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
        } else {
            this.firebaseAnalytics.setUserProperty(str, str2);
        }
    }

    @SimpleFunction(description = "Set a custom user id for the user to identify the individual user")
    public void SetUserId(String str) {
        if (this.container.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
        } else {
            this.firebaseAnalytics.setUserId(str);
        }
    }

    @SimpleEvent(description = "Failed to LOG event")
    public void FailedToLogEvent(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToLogEvent", str);
    }
}
