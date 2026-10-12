package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.ads.consent.ConsentForm;
import com.google.ads.consent.ConsentFormListener;
import com.google.ads.consent.ConsentInfoUpdateListener;
import com.google.ads.consent.ConsentInformation;
import com.google.ads.consent.ConsentStatus;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.net.MalformedURLException;
import java.net.URL;

@SimpleObject
@UsesAssets(fileNames = "consentform.html")
@DesignerComponent(androidMinSdk = 14, category = ComponentCategory.MONETIZATION, description = "The Google-rendered consent form is a full-screen configurable form that displays over your app content. You can configure the form to present the user with combinations of the following options:", iconName = "images/adsConsentForm.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "consent-library-1.0.8.aar, consent-library-1.0.8.jar, gson.jar")
/* loaded from: classes.dex */
public final class AdsConsentForm extends AndroidNonvisibleComponent {
    private boolean adFreeOption;
    private ConsentForm consentForm;
    private Context context;
    protected boolean nonPersonalizedAdsOption;
    private boolean personalizedAdsOption;
    private String privacyUrl;

    public AdsConsentForm(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.privacyUrl = "";
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Privacy Url In the Form")
    @DesignerProperty(defaultValue = "https://www.google.com", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void PrivacyPolicyUrl(String str) {
        this.privacyUrl = str;
    }

    @SimpleProperty
    public String PrivacyPolicyUrl() {
        return this.privacyUrl;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Admob PublisherId")
    @DesignerProperty(defaultValue = "pub-0123456789012345", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void PublisherId(String str) {
        ConsentInformation.getInstance(this.context).requestConsentInfoUpdate(new String[]{str}, new ConsentInfoUpdateListener() { // from class: com.google.appinventor.components.runtime.AdsConsentForm.1
            public void onConsentInfoUpdated(ConsentStatus consentStatus) {
            }

            public void onFailedToUpdateConsentInfo(String str2) {
            }
        });
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void PersonalizedAdsOption(boolean z) {
        this.personalizedAdsOption = z;
    }

    @SimpleProperty
    public boolean PersonalizedAdsOption() {
        return this.personalizedAdsOption;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void NonPersonalizedAdsOption(boolean z) {
        this.nonPersonalizedAdsOption = z;
    }

    @SimpleProperty
    public boolean NonPersonalizedAdsOption() {
        return this.nonPersonalizedAdsOption;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AdFreeOption(boolean z) {
        this.adFreeOption = z;
    }

    @SimpleProperty
    public boolean AdFreeOption() {
        return this.adFreeOption;
    }

    @SimpleFunction(description = "Load the Consent Form before Showing")
    public void LoadConsentForm() {
        URL url;
        try {
            url = new URL(this.privacyUrl);
        } catch (MalformedURLException unused) {
            ErrorOccurred("Malformed URl");
            url = null;
        }
        if (url != null) {
            ConsentForm.Builder builder = new ConsentForm.Builder(this.context, url);
            builder.withListener(new ConsentFormListener() { // from class: com.google.appinventor.components.runtime.AdsConsentForm.2
                public void onConsentFormLoaded() {
                    AdsConsentForm.this.ConsentFormLoaded();
                }

                public void onConsentFormError(String str) {
                    AdsConsentForm.this.ConsentFormError(str);
                }

                public void onConsentFormOpened() {
                    AdsConsentForm.this.ConsentFormOpened();
                }

                public void onConsentFormClosed(ConsentStatus consentStatus, Boolean bool) {
                    int i = AnonymousClass3.$SwitchMap$com$google$ads$consent$ConsentStatus[consentStatus.ordinal()];
                    if (i == 1) {
                        AdsConsentForm.this.ConsentFormClosed("Personalized", bool.booleanValue());
                    } else {
                        if (i != 2) {
                            if (i != 3) {
                                return;
                            }
                        }
                        AdsConsentForm.this.ConsentFormClosed("UnKnown", bool.booleanValue());
                    }
                    AdsConsentForm.this.ConsentFormClosed("NonPersonalized", bool.booleanValue());
                    AdsConsentForm.this.ConsentFormClosed("UnKnown", bool.booleanValue());
                }
            });
            if (this.personalizedAdsOption) {
                builder.withPersonalizedAdsOption();
            }
            if (this.nonPersonalizedAdsOption) {
                builder.withNonPersonalizedAdsOption();
            }
            if (this.adFreeOption) {
                builder.withAdFreeOption();
            }
            ConsentForm consentFormBuild = builder.build();
            this.consentForm = consentFormBuild;
            consentFormBuild.load();
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.AdsConsentForm$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$google$ads$consent$ConsentStatus;

        static {
            int[] iArr = new int[ConsentStatus.values().length];
            $SwitchMap$com$google$ads$consent$ConsentStatus = iArr;
            try {
                iArr[ConsentStatus.PERSONALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$ads$consent$ConsentStatus[ConsentStatus.NON_PERSONALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$ads$consent$ConsentStatus[ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @SimpleFunction(description = "Show the Consent Form after Loading")
    public void ShowConsentForm() {
        ConsentForm consentForm = this.consentForm;
        if (consentForm != null) {
            consentForm.show();
        } else {
            ErrorOccurred("Load the Consent Form First");
        }
    }

    @SimpleEvent(description = "Form loaded")
    public void ConsentFormLoaded() {
        EventDispatcher.dispatchEvent(this, "ConsentFormLoaded", new Object[0]);
    }

    @SimpleEvent(description = "The form is opened and is displayed to the user")
    public void ConsentFormOpened() {
        EventDispatcher.dispatchEvent(this, "ConsentFormOpened", new Object[0]);
    }

    @SimpleEvent(description = "Consent Form was Closed. Users Choice is returned")
    public void ConsentFormClosed(String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "ConsentFormClosed", new Object[0]);
    }

    @SimpleEvent(description = "Some Error Occurred while creating form")
    public void ConsentFormError(String str) {
        EventDispatcher.dispatchEvent(this, "ConsentFormError", str);
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
