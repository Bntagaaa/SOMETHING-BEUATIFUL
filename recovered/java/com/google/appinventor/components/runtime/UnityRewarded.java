package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Rewarded Ads are full-screen ads where users are rewarded for watching the ads completely. <br> SDK Version: 4.7.1", iconName = "images/unityRewarded.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class UnityRewarded extends AndroidNonvisibleComponent {
    private Activity activity;
    private Context context;
    private String placementId;

    public UnityRewarded(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.placementId = "";
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleFunction(description = "Load a Rewarded Ad")
    public void LoadAd(String str) {
        this.placementId = str;
        UnityAds.load(str, new IUnityAdsLoadListener() { // from class: com.google.appinventor.components.runtime.UnityRewarded.1
            public void onUnityAdsAdLoaded(String str2) {
                UnityRewarded.this.AdLoaded();
            }

            public void onUnityAdsFailedToLoad(String str2, UnityAds.UnityAdsLoadError unityAdsLoadError, String str3) {
                UnityRewarded.this.AdFailedToLoad(unityAdsLoadError.toString());
            }
        });
    }

    @SimpleFunction(description = "Display a Rewarded Ad")
    public void ShowAd() {
        UnityAds.show(this.activity, this.placementId, new IUnityAdsShowListener() { // from class: com.google.appinventor.components.runtime.UnityRewarded.2
            public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
                UnityRewarded.this.AdFailedToShow(unityAdsShowError.toString());
            }

            public void onUnityAdsShowStart(String str) {
                UnityRewarded.this.AdStarted();
            }

            public void onUnityAdsShowClick(String str) {
                UnityRewarded.this.AdClicked();
            }

            public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                String str2;
                int i = AnonymousClass3.$SwitchMap$com$unity3d$ads$UnityAds$UnityAdsShowCompletionState[unityAdsShowCompletionState.ordinal()];
                if (i == 1) {
                    str2 = "Skipped";
                } else if (i == 2) {
                    str2 = "Completed";
                } else {
                    str2 = "Unknown";
                }
                UnityRewarded.this.AdFinished(str2);
            }
        });
    }

    /* renamed from: com.google.appinventor.components.runtime.UnityRewarded$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$unity3d$ads$UnityAds$UnityAdsShowCompletionState;

        static {
            int[] iArr = new int[UnityAds.UnityAdsShowCompletionState.values().length];
            $SwitchMap$com$unity3d$ads$UnityAds$UnityAdsShowCompletionState = iArr;
            try {
                iArr[UnityAds.UnityAdsShowCompletionState.SKIPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$unity3d$ads$UnityAds$UnityAdsShowCompletionState[UnityAds.UnityAdsShowCompletionState.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @SimpleEvent(description = "Ad Loaded")
    public void AdLoaded() {
        EventDispatcher.dispatchEvent(this, "AdLoaded", new Object[0]);
    }

    @SimpleEvent(description = "Ad Clicked")
    public void AdClicked() {
        EventDispatcher.dispatchEvent(this, "AdClicked", new Object[0]);
    }

    @SimpleEvent(description = "Ad Failed To Load")
    public void AdFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str);
    }

    @SimpleEvent(description = "Ad Started Playing")
    public void AdStarted() {
        EventDispatcher.dispatchEvent(this, "AdStarted", new Object[0]);
    }

    @SimpleEvent(description = "Ad Finished Playing. The status returns if its Skipped, Completed or if error occurred")
    public void AdFinished(String str) {
        EventDispatcher.dispatchEvent(this, "AdFinished", str);
    }

    @SimpleEvent(description = "Ad Failed to Display")
    public void AdFailedToShow(String str) {
        EventDispatcher.dispatchEvent(this, "AdFailedToShow", str);
    }
}
