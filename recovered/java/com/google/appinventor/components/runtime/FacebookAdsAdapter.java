package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;

@SimpleObject
@UsesAssets(fileNames = "audience_network.dex")
@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Facebook Ads Adapter for Mediation. Supported With Ironsource, Admob, Google Ad Manager, Mopub, Max(Applovin)", iconName = "images/facebookAdsAdapter.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "audience-network-sdk.aar, audience-network-sdk.jar, play-services-basement.aar, play-services-basement.jar, legacy-support-v4.aar, legacy-support-v4.jar, media.aar, media.jar, annotation.jar")
/* loaded from: classes.dex */
public final class FacebookAdsAdapter extends AndroidNonvisibleComponent {
    public FacebookAdsAdapter(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }
}
