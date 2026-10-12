package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.VungleBannerSize;
import com.vungle.ads.BannerAd;
import com.vungle.ads.BannerAdSize;
import com.vungle.ads.BaseAd;
import com.vungle.ads.BaseAdListener;
import com.vungle.ads.VungleError;
import org.jetbrains.annotations.NotNull;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Vungle ads banner component. <br> SDK Version: 6.12.0", iconName = "images/niotronVungleBanner.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronVungleBanner extends AndroidViewComponent {
    private Activity activity;
    private BannerAd bannerAd;
    private Context context;
    private android.widget.LinearLayout view;

    public NiotronVungleBanner(ComponentContainer componentContainer) {
        super(componentContainer);
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.activity = activity$context;
        this.view = new android.widget.LinearLayout(this.context);
        componentContainer.$add(this);
    }

    @SimpleFunction
    public void LoadAd(String str, @Options(VungleBannerSize.class) int i) {
        BannerAdSize bannerAdSize;
        if (i == 0) {
            bannerAdSize = BannerAdSize.BANNER;
        } else if (i == 1) {
            bannerAdSize = BannerAdSize.BANNER_SHORT;
        } else {
            bannerAdSize = BannerAdSize.BANNER_LEADERBOARD;
        }
        BannerAd bannerAd = new BannerAd(this.context, str, bannerAdSize);
        this.bannerAd = bannerAd;
        bannerAd.setAdListener(new BaseAdListener() { // from class: com.google.appinventor.components.runtime.NiotronVungleBanner.1
            public void onAdLoaded(@NotNull BaseAd baseAd) {
                NiotronVungleBanner.this.AdLoaded(baseAd.getPlacementId());
            }

            public void onAdStart(@NotNull BaseAd baseAd) {
                NiotronVungleBanner.this.AdStarted(baseAd.getPlacementId());
            }

            public void onAdImpression(@NotNull BaseAd baseAd) {
                NiotronVungleBanner.this.AdViewed(baseAd.getPlacementId());
            }

            public void onAdEnd(@NotNull BaseAd baseAd) {
                NiotronVungleBanner.this.AdEnded(baseAd.getPlacementId());
            }

            public void onAdClicked(@NotNull BaseAd baseAd) {
                NiotronVungleBanner.this.AdClicked(baseAd.getPlacementId());
            }

            public void onAdLeftApplication(@NotNull BaseAd baseAd) {
                NiotronVungleBanner.this.AdLeftApplication(baseAd.getPlacementId());
            }

            public void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
                NiotronVungleBanner.this.AdFailedToLoad(baseAd.getPlacementId(), vungleError.toString());
            }

            public void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
                NiotronVungleBanner.this.AdFailedToPlay(baseAd.getPlacementId(), vungleError.toString());
            }
        });
    }

    @SimpleFunction
    public void PlayAd() {
        if (this.bannerAd != null) {
            this.view.removeAllViews();
            this.view.addView((View) this.bannerAd.getBannerView(), (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-2, -2, 1));
        }
    }

    @SimpleFunction
    public void DismissAd() {
        this.view.removeAllViews();
        this.bannerAd.finishAd();
        this.bannerAd.setAdListener((BaseAdListener) null);
        this.bannerAd = null;
    }

    @SimpleEvent
    public void AdLeftApplication(String str) {
        EventDispatcher.dispatchEvent(this, "AdLeftApplication", str);
    }

    @SimpleEvent
    public void AdClicked(String str) {
        EventDispatcher.dispatchEvent(this, "AdClicked", str);
    }

    @SimpleEvent
    public void AdViewed(String str) {
        EventDispatcher.dispatchEvent(this, "AdViewed", str);
    }

    @SimpleEvent
    public void AdFailedToLoad(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "AdFailedToLoad", str, str2);
    }

    @SimpleEvent
    public void AdFailedToPlay(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "AdFailedToPlay", str, str2);
    }

    @SimpleEvent
    public void AdLoaded(String str) {
        EventDispatcher.dispatchEvent(this, "AdLoaded", str);
    }

    @SimpleEvent
    public void AdStarted(String str) {
        EventDispatcher.dispatchEvent(this, "AdStarted", str);
    }

    @SimpleEvent
    public void AdEnded(String str) {
        EventDispatcher.dispatchEvent(this, "AdEnded", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }
}
