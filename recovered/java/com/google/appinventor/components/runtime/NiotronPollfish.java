package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PollfishIconPosition;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.pollfish.Pollfish;
import com.pollfish.builder.Params;
import com.pollfish.builder.Position;
import com.pollfish.callback.PollfishClosedListener;
import com.pollfish.callback.PollfishOpenedListener;
import com.pollfish.callback.PollfishSurveyCompletedListener;
import com.pollfish.callback.PollfishSurveyNotAvailableListener;
import com.pollfish.callback.PollfishSurveyReceivedListener;
import com.pollfish.callback.PollfishUserNotEligibleListener;
import com.pollfish.callback.PollfishUserRejectedSurveyListener;
import com.pollfish.callback.SurveyInfo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, com.google.android.gms.permission.AD_ID")
@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "Pollfish ad component for surveys provided by pollfish. <br> SDK Version: 6.4.0", iconName = "images/niotronPollfish.png", nonVisible = true, version = 2)
@UsesLibraries(libraries = "pollfish-universal.aar, pollfish-universal.jar")
/* loaded from: classes.dex */
public class NiotronPollfish extends AndroidNonvisibleComponent implements PollfishSurveyCompletedListener {
    private final String TEST_API_KEY;
    private Activity activity;
    private String apiKey;
    private Context context;
    private boolean offerWallEnabled;
    private Params params;
    private Position position;
    private boolean rewardedEnabled;
    private boolean testMode;

    public void onPollfishSurveyCompleted(@NotNull SurveyInfo surveyInfo) {
    }

    public NiotronPollfish(ComponentContainer componentContainer) throws PackageManager.NameNotFoundException {
        super(componentContainer.$form());
        this.position = Position.BOTTOM_RIGHT;
        this.testMode = true;
        this.offerWallEnabled = true;
        this.rewardedEnabled = true;
        this.TEST_API_KEY = "f60355d8-94c2-4b21-a6ac-3d4479b867fc";
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        if (this.form instanceof ReplForm) {
            this.apiKey = "f60355d8-94c2-4b21-a6ac-3d4479b867fc";
            this.testMode = true;
            return;
        }
        String aPiKey = getAPiKey(this.context);
        this.apiKey = aPiKey;
        if (aPiKey == null || aPiKey.equals("pollfish-default-api-key")) {
            ErrorOccurred("Pollfish API Key not found");
            throw new YailRuntimeError("Put your Pollfish API Key in the Settings Menu", "Pollfish API Key Error");
        }
    }

    @SimpleProperty(description = "Set rewarded mode")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void RewardedMode(boolean z) {
        this.rewardedEnabled = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean RewardedMode() {
        return this.rewardedEnabled;
    }

    @SimpleProperty(description = "Set to true if \"offerwall mode\" needed, set to false for \"single survey\"")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void OfferWallMode(boolean z) {
        this.offerWallEnabled = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "returns true if \"offerwall mode\", false for \"single survey\"")
    public boolean OfferWallMode() {
        return this.offerWallEnabled;
    }

    @SimpleProperty(description = "Set the test mode")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TestMode(boolean z) {
        this.testMode = (this.form instanceof ReplForm) || z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean TestMode() {
        return this.testMode;
    }

    @SimpleProperty(description = "Set Pollfish icon position")
    public void IconPosition(@Options(PollfishIconPosition.class) String str) {
        if (str == PollfishIconPosition.BottomLeft.toUnderlyingValue()) {
            this.position = Position.BOTTOM_LEFT;
            return;
        }
        if (str == PollfishIconPosition.BottomRight.toUnderlyingValue()) {
            this.position = Position.BOTTOM_RIGHT;
            return;
        }
        if (str == PollfishIconPosition.TopLeft.toUnderlyingValue()) {
            this.position = Position.TOP_LEFT;
            return;
        }
        if (str == PollfishIconPosition.TopRight.toUnderlyingValue()) {
            this.position = Position.TOP_RIGHT;
        } else if (str == PollfishIconPosition.MiddleLeft.toUnderlyingValue()) {
            this.position = Position.MIDDLE_LEFT;
        } else {
            if (str == PollfishIconPosition.MiddleRight.toUnderlyingValue()) {
                this.position = Position.MIDDLE_RIGHT;
                return;
            }
            throw new YailRuntimeError("Not valid icon position in pollfish", "Invalid Input");
        }
    }

    @SimpleFunction
    public void InitializePollfish() {
        Params paramsBuild = new Params.Builder(this.apiKey.trim()).releaseMode(!this.testMode).rewardMode(this.rewardedEnabled).offerwallMode(this.offerWallEnabled).indicatorPosition(this.position).pollfishSurveyReceivedListener(new PollfishSurveyReceivedListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.7
            public void onPollfishSurveyReceived(@Nullable SurveyInfo surveyInfo) {
                String str;
                if (surveyInfo == null) {
                    str = "";
                } else {
                    str = "{Reward Name : " + surveyInfo.getRewardName() + ",Reward Value : " + surveyInfo.getRewardValue() + ",CPA : " + surveyInfo.getSurveyCPA() + ",IR : " + surveyInfo.getSurveyIR() + ",LOI : " + surveyInfo.getSurveyLOI() + "}";
                }
                NiotronPollfish.this.SurveyReceived(str);
            }
        }).pollfishSurveyCompletedListener(new PollfishSurveyCompletedListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.6
            public void onPollfishSurveyCompleted(@NotNull SurveyInfo surveyInfo) {
                NiotronPollfish.this.SurveyCompleted("{Reward Name : " + surveyInfo.getRewardName() + ",Reward Value : " + surveyInfo.getRewardValue() + ",CPA : " + surveyInfo.getSurveyCPA() + ",IR : " + surveyInfo.getSurveyIR() + ",LOI : " + surveyInfo.getSurveyLOI() + "}");
            }
        }).pollfishClosedListener(new PollfishClosedListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.5
            public void onPollfishClosed() {
                NiotronPollfish.this.Closed();
            }
        }).pollfishOpenedListener(new PollfishOpenedListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.4
            public void onPollfishOpened() {
                NiotronPollfish.this.Opened();
            }
        }).pollfishSurveyNotAvailableListener(new PollfishSurveyNotAvailableListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.3
            public void onPollfishSurveyNotAvailable() {
                NiotronPollfish.this.SurveyNotAvailable();
            }
        }).pollfishUserNotEligibleListener(new PollfishUserNotEligibleListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.2
            public void onUserNotEligible() {
                NiotronPollfish.this.UserNotEligible();
            }
        }).pollfishUserRejectedSurveyListener(new PollfishUserRejectedSurveyListener() { // from class: com.google.appinventor.components.runtime.NiotronPollfish.1
            public void onUserRejectedSurvey() {
                NiotronPollfish.this.UserRejectedSurvey();
            }
        }).build();
        this.params = paramsBuild;
        Pollfish.initWith(this.activity, paramsBuild);
    }

    @SimpleFunction(description = "Show the survey")
    public void Show() {
        Pollfish.show();
    }

    @SimpleFunction(description = "Hide the survey")
    public void Hide() {
        Pollfish.hide();
    }

    @SimpleEvent(description = "Triggers when Something Goes wrong")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Triggers when pollfish closed")
    public void Closed() {
        EventDispatcher.dispatchEvent(this, "Closed", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when pollfish survey completed")
    public void SurveyCompleted(String str) {
        EventDispatcher.dispatchEvent(this, "SurveyCompleted", str);
    }

    @SimpleEvent(description = "Triggers when pollfish opened")
    public void Opened() {
        EventDispatcher.dispatchEvent(this, "Opened", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when pollfish survey received")
    public void SurveyReceived(String str) {
        EventDispatcher.dispatchEvent(this, "SurveyReceived", str);
    }

    @SimpleEvent(description = "Triggers when pollfish survey not available")
    public void SurveyNotAvailable() {
        EventDispatcher.dispatchEvent(this, "SurveyNotAvailable", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when user not eligible")
    public void UserNotEligible() {
        EventDispatcher.dispatchEvent(this, "UserNotEligible", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when user rejected pollfish survey")
    public void UserRejectedSurvey() {
        EventDispatcher.dispatchEvent(this, "UserRejectedSurvey", new Object[0]);
    }

    private String getAPiKey(Context context) throws PackageManager.NameNotFoundException {
        if (this.testMode) {
            return "f60355d8-94c2-4b21-a6ac-3d4479b867fc";
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData.getString("pollfishapikey", null);
            }
        } catch (PackageManager.NameNotFoundException e) {
            ErrorOccurred(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }
}
