package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import io.adjoe.sdk.Adjoe;
import io.adjoe.sdk.AdjoeException;
import io.adjoe.sdk.AdjoeGender;
import io.adjoe.sdk.AdjoeInitialisationListener;
import io.adjoe.sdk.AdjoeNotInitializedException;
import io.adjoe.sdk.AdjoeOfferwallListener;
import io.adjoe.sdk.AdjoeParams;
import io.adjoe.sdk.AdjoePayoutError;
import io.adjoe.sdk.AdjoePayoutListener;
import io.adjoe.sdk.AdjoeRewardListener;
import io.adjoe.sdk.AdjoeRewardResponse;
import io.adjoe.sdk.AdjoeRewardResponseError;
import io.adjoe.sdk.AdjoeUserProfile;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Adjoe is a mobile ad tech company that helps app developers boost revenue through smart ad placements. Their platform offers easy integration, rewarded ads, and detailed analytics, ensuring effective user engagement and seamless app experiences.", iconName = "images/adjoeAds.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "adjoe-sdk-android.aar, adjoe-sdk-android.jar, adjoe-protection-android-standard.aar, adjoe-protection-android-standard.jar, work-runtime.aar, work-runtime.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, play-services-auth.aar, play-services-auth.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, integrity.aar, integrity.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-fido.aar, play-services-fido.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, annotation.jar, constraintlayout-solver.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class AdjoePlaytimeAds extends AndroidNonvisibleComponent {
    private AdjoeGender adjoeGender;
    private String applicationProcessName;
    Context context;
    private Date dob;
    private String placement;
    private String sdkHash;
    private String uaChannel;
    private String uaNetwork;
    private String uaSubPublisherCleartext;
    private String uaSubPublisherEncrypted;
    private String userId;

    public AdjoePlaytimeAds(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.uaNetwork = "default";
        this.uaChannel = "default";
        this.uaSubPublisherCleartext = "default";
        this.uaSubPublisherEncrypted = "default";
        this.placement = "default";
        this.userId = "default";
        this.applicationProcessName = "default";
        this.dob = new Date();
        this.adjoeGender = AdjoeGender.UNKNOWN;
        this.sdkHash = "default";
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set adjoe option of application user id")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UserId(String str) {
        this.userId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "The network which the user was acquired from, e.g. adwords, facebook, organic")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UaNetwork(String str) {
        this.uaNetwork = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "The channel of the campaign in the network where the user was acquired, e.g. incent, video")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UaChannel(String str) {
        this.uaChannel = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "The cleartext package name of app id of the sub publisher app in the network where the user was acquired, e.g. com.domain.appName")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UaSubPublisherCleartext(String str) {
        this.uaSubPublisherCleartext = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "The encrypted package name or app id of the sub-publisher app in the network where the user was acquired.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SubPublisherEncrypted(String str) {
        this.uaSubPublisherEncrypted = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "The placement of Playtime inside your app, e.g. \"Main Screen\", \"Shop\", \"Interstitial\", \"More Diamonds Screen\", etc.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Placement(String str) {
        this.placement = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set date of birth of the user for adjoe ads in \"dd/MM/yyyy\" format")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void DOB(String str) {
        try {
            this.dob = new SimpleDateFormat("dd/MM/yyyy").parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set adjoe parameter for sdk hash for ads")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SDKHash(String str) {
        this.sdkHash = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set adjoe users gender for ads, \"Male\", \"Female\", \"Unknown\"")
    @DesignerProperty(editorArgs = {"Male", "Female", "Unknown"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void Gender(String str) {
        if (str.equals("Male")) {
            this.adjoeGender = AdjoeGender.MALE;
        } else if (str.equals("Female")) {
            this.adjoeGender = AdjoeGender.FEMALE;
        } else if (str.equals("Unknown")) {
            this.adjoeGender = AdjoeGender.UNKNOWN;
        }
    }

    @SimpleFunction(description = "Initialize the adjoe ads SDK")
    public void InitializeSDK() {
        AdjoeParams adjoeParamsBuild = new AdjoeParams.Builder().setUaNetwork(this.uaNetwork).setUaChannel(this.uaChannel).setUaSubPublisherCleartext(this.uaSubPublisherCleartext).setUaSubPublisherEncrypted(this.uaSubPublisherEncrypted).setPlacement(this.placement).build();
        Adjoe.init(this.context, this.sdkHash, new Adjoe.Options().setUserId(this.userId).setApplicationProcessName(this.context.getApplicationInfo().processName).setParams(adjoeParamsBuild).setUserProfile(new AdjoeUserProfile(this.adjoeGender, this.dob)), new AdjoeInitialisationListener() { // from class: com.google.appinventor.components.runtime.AdjoePlaytimeAds.1
            public void onInitialisationFinished() {
                AdjoePlaytimeAds.this.InitialisationFinished();
            }

            public void onInitialisationError(Exception exc) {
                if (exc.toString().contains("An internal service error occurred.")) {
                    AdjoePlaytimeAds.this.InitializeSDK();
                } else {
                    AdjoePlaytimeAds.this.InitialisationError(exc.toString());
                }
            }
        });
        Adjoe.setOfferwallListener(new AdjoeOfferwallListener() { // from class: com.google.appinventor.components.runtime.AdjoePlaytimeAds.2
            public void onOfferwallOpened(String str) {
                AdjoePlaytimeAds.this.OfferwallOpened(str);
            }

            public void onOfferwallClosed(String str) {
                AdjoePlaytimeAds.this.OfferwallClosed(str);
            }
        });
    }

    @SimpleFunction(description = "Initiate a payout to a user")
    public void DoPayout() {
        try {
            Adjoe.doPayout(this.context, new AdjoePayoutListener() { // from class: com.google.appinventor.components.runtime.AdjoePlaytimeAds.3
                public void onPayoutExecuted(int i) {
                    AdjoePlaytimeAds.this.PayoutExecuted(i);
                }

                public void onPayoutError(AdjoePayoutError adjoePayoutError) {
                    int reason = adjoePayoutError.getReason();
                    if (reason == 0) {
                        AdjoePlaytimeAds.this.PayoutError("Unknown");
                    } else if (reason == 400) {
                        AdjoePlaytimeAds.this.PayoutError("Not enough coins");
                    } else if (reason == 1) {
                        AdjoePlaytimeAds.this.PayoutError("TOS not accepted");
                    }
                }
            });
        } catch (AdjoeNotInitializedException unused) {
            AdjoeNotInitializedException();
        }
    }

    @SimpleFunction(description = "You can get information about the rewards that the user has collected as well as about how many rewards are available for payout and how many the user has already spent.")
    public void RequestRewards() {
        try {
            Adjoe.requestRewards(this.context, new AdjoeRewardListener() { // from class: com.google.appinventor.components.runtime.AdjoePlaytimeAds.4
                public void onUserReceivesReward(AdjoeRewardResponse adjoeRewardResponse) {
                    AdjoePlaytimeAds.this.UserReceivesReward(adjoeRewardResponse.getReward(), adjoeRewardResponse.getAvailablePayoutCoins(), adjoeRewardResponse.getAlreadySpentCoins());
                }

                public void onUserReceivesRewardError(AdjoeRewardResponseError adjoeRewardResponseError) {
                    if (adjoeRewardResponseError.getException() != null) {
                        adjoeRewardResponseError.getException().printStackTrace();
                    }
                }
            });
        } catch (AdjoeNotInitializedException unused) {
            AdjoeNotInitializedException();
        }
    }

    @SimpleFunction(description = "Opens the playtime offerwall")
    public void OpenPlaytime() {
        try {
            this.context.startActivity(Adjoe.getOfferwallIntent(this.context));
        } catch (AdjoeException e) {
            AdjoeError(e.toString());
        } catch (AdjoeNotInitializedException unused) {
            AdjoeNotInitializedException();
        }
    }

    @SimpleFunction(description = "Returns true or false depending if offerwall can be shown or not")
    public boolean CanShowOfferwall() {
        return Adjoe.canShowOfferwall(this.context);
    }

    @SimpleFunction(description = "Shows the teaser button for adjoe offerwall")
    public void ShowTeaserButton() {
        try {
            if (Adjoe.canShowOfferwall(this.context)) {
                Adjoe.sendUserEvent(this.context, 14, (String) null);
            }
        } catch (AdjoeNotInitializedException unused) {
            AdjoeNotInitializedException();
        }
    }

    @SimpleEvent(description = "Triggers when SDK is initialized")
    public void InitialisationFinished() {
        EventDispatcher.dispatchEvent(this, "InitialisationFinished", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when SDK is initialization tripped on a error")
    public void InitialisationError(String str) {
        EventDispatcher.dispatchEvent(this, "InitialisationError", str);
    }

    @SimpleEvent(description = "rewards is the amount of `rewards` that have been successfully withdrawn from the balance")
    public void PayoutExecuted(int i) {
        EventDispatcher.dispatchEvent(this, "PayoutExecuted", Integer.valueOf(i));
    }

    @SimpleEvent(description = "an error occurred while paying out the rewards")
    public void PayoutError(String str) {
        EventDispatcher.dispatchEvent(this, "PayoutError", str);
    }

    @SimpleEvent(description = "an error occurred in Adjoe SDK")
    public void AdjoeNotInitializedException() {
        EventDispatcher.dispatchEvent(this, "AdjoeNotInitializedException", new Object[0]);
    }

    @SimpleEvent(description = "successfully received the rewards")
    public void UserReceivesReward(int i, int i2, int i3) {
        EventDispatcher.dispatchEvent(this, "UserReceivesReward", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @SimpleEvent(description = "Some error occurred in adjoe")
    public void AdjoeError(String str) {
        EventDispatcher.dispatchEvent(this, "AdjoeError", str);
    }

    @SimpleEvent(description = "Event triggers when offerwall opened")
    public void OfferwallOpened(String str) {
        EventDispatcher.dispatchEvent(this, "OfferwallOpened", str);
    }

    @SimpleEvent(description = "Event triggers when offerwall closed")
    public void OfferwallClosed(String str) {
        EventDispatcher.dispatchEvent(this, "OfferwallClosed", str);
    }
}
