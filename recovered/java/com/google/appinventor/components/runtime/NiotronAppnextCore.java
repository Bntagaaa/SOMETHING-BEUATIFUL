package com.google.appinventor.components.runtime;

import com.appnext.base.Appnext;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Niotron Appnext Core Component", iconName = "images/niotronAppnextCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "appnext-core.aar, appnext-core.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, work-runtime.aar, work-runtime.jar, play-services-basement.aar, play-services-basement.jar, glide.aar, glide.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, gifdecoder.aar, gifdecoder.jar, exifinterface.aar, exifinterface.jar, annotation.jar, disklrucache.jar, glide-annotations.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAppnextCore extends AndroidNonvisibleComponent {
    private boolean consent;

    public NiotronAppnextCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.consent = false;
        Appnext.init(componentContainer.$context());
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Set Consent")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Consent(boolean z) {
        this.consent = z;
        if (z) {
            Appnext.setParam("consent", "true");
        } else {
            Appnext.setParam("consent", "false");
        }
    }

    @SimpleFunction(description = "Get Consent")
    public boolean Consent() {
        return this.consent;
    }
}
