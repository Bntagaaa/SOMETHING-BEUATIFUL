package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.UnityAds;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, com.google.android.gms.permission.AD_ID, android.permission.ACCESS_ADSERVICES_TOPICS, android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Core Component for using UnityAds Components. Required only in Screen1", iconName = "images/unityAdsCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "unity-ads.aar, unity-ads.jar, okhttp.jar, activity-ktx.aar, activity-ktx.jar, webkit.aar, webkit.jar, work-runtime-ktx.aar, work-runtime-ktx.jar, work-runtime.aar, work-runtime.jar, play-services-cronet.aar, play-services-cronet.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, savedstate-ktx.aar, savedstate-ktx.jar, lifecycle-viewmodel-ktx.aar, lifecycle-viewmodel-ktx.jar, lifecycle-runtime-ktx.jar, datastore.aar, datastore.jar, datastore-core.jar, okio-jvm.jar, protobuf-kotlin-lite.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, annotation.jar, protobuf-javalite.jar, cronet-api.aar, cronet-api.jar")
/* loaded from: classes.dex */
public final class UnityAdsCore extends AndroidNonvisibleComponent implements IUnityAdsInitializationListener {
    private Activity context;
    private String gameId;
    private boolean testMode;

    public UnityAdsCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.gameId = "";
        this.testMode = false;
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Initialize the SDK. Must be called before using any ad components")
    public void InitializeSDK() {
        if (this.gameId.isEmpty()) {
            InitializationFailed("Game ID is empty");
        } else {
            UnityAds.initialize(this.context, this.gameId, this.testMode, this);
        }
    }

    public void onInitializationComplete() {
        InitializationComplete();
    }

    public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str) {
        InitializationFailed(str);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the Game ID from Unity Dashboard")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void GameId(String str) {
        this.gameId = str;
    }

    @SimpleProperty(description = "Get the Game ID")
    public String GameId() {
        return this.gameId;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set testMode to true to see test ads")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = z;
    }

    @SimpleProperty(description = "Get testMode")
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleEvent(description = "Initialization Complete")
    public void InitializationComplete() {
        EventDispatcher.dispatchEvent(this, "InitializationComplete", new Object[0]);
    }

    @SimpleEvent(description = "Initialization Failed")
    public void InitializationFailed(String str) {
        EventDispatcher.dispatchEvent(this, "InitializationFailed", str);
    }
}
