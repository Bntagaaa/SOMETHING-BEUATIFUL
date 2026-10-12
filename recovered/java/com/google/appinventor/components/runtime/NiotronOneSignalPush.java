package com.google.appinventor.components.runtime;

import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.OneSignalLogLevel;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.onesignal.Continue;
import com.onesignal.ContinueResult;
import com.onesignal.OneSignal;
import com.onesignal.debug.LogLevel;
import com.onesignal.inAppMessages.IInAppMessageClickEvent;
import com.onesignal.inAppMessages.IInAppMessageClickListener;
import com.onesignal.inAppMessages.IInAppMessageDidDismissEvent;
import com.onesignal.inAppMessages.IInAppMessageDidDisplayEvent;
import com.onesignal.inAppMessages.IInAppMessageLifecycleListener;
import com.onesignal.inAppMessages.IInAppMessageWillDismissEvent;
import com.onesignal.inAppMessages.IInAppMessageWillDisplayEvent;
import com.onesignal.inAppMessages.InAppMessageActionUrlType;
import com.onesignal.notifications.INotificationClickEvent;
import com.onesignal.notifications.INotificationClickListener;
import com.onesignal.notifications.INotificationLifecycleListener;
import com.onesignal.notifications.INotificationWillDisplayEvent;
import com.onesignal.notifications.IPermissionObserver;
import com.onesignal.user.state.IUserStateObserver;
import com.onesignal.user.state.UserChangedState;
import com.onesignal.user.state.UserState;
import com.onesignal.user.subscriptions.IPushSubscriptionObserver;
import com.onesignal.user.subscriptions.PushSubscriptionChangedState;
import com.onesignal.user.subscriptions.PushSubscriptionState;
import java.util.function.Consumer;
import org.jetbrains.annotations.NotNull;

@DesignerComponent(androidMinSdk = 21, category = ComponentCategory.EXPERIMENTAL, description = "Component for receiving onesignal push nitification ", iconName = "images/niotronOneSignalPush.png", nonVisible = true, version = 2)
@UsesLibraries(libraries = "OneSignal.aar, OneSignal.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronOneSignalPush extends AndroidNonvisibleComponent {
    private String appId;
    private boolean consentGiven;
    private boolean consentRequired;
    private Context context;
    private boolean inAppMessages;
    private boolean locationSharing;

    @SimpleEvent(description = "deprecated")
    @Deprecated
    public void GotTags(YailDictionary yailDictionary) {
    }

    @SimpleEvent(description = "deprecated")
    @Deprecated
    public void OnErrorSendingNotification(YailDictionary yailDictionary) {
    }

    @SimpleEvent(description = "deprecated")
    @Deprecated
    public void OnNotificationFailed(YailDictionary yailDictionary) {
    }

    @SimpleEvent(description = "deprecated")
    @Deprecated
    public void OnNotificationSend(YailDictionary yailDictionary) {
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Returns if sound enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void SoundEnabled(boolean z) {
    }

    @SimpleProperty(description = "Returns ifsound enabled")
    @Deprecated
    public boolean SoundEnabled() {
        return false;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Sets subscription enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void SubscriptionEnabled(boolean z) {
    }

    @SimpleProperty(description = "Returns subscription enabled")
    @Deprecated
    public boolean SubscriptionEnabled() {
        return false;
    }

    @SimpleProperty(description = "Sets vibration enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void VirbrationEnabled(boolean z) {
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "returns is vibration enabled")
    @Deprecated
    public boolean VirbrationEnabled() {
        return false;
    }

    public NiotronOneSignalPush(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.consentRequired = false;
        this.consentGiven = false;
        this.locationSharing = false;
        this.inAppMessages = false;
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets app id")
    @DesignerProperty
    public void AppId(String str) {
        this.appId = str;
    }

    @SimpleProperty(description = "Returns app id")
    public String AppId() {
        return this.appId;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Determines whether users must consent to privacy before sending their data to OneSignal. This should be set to true to ensure compliance")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ConsentRequired(boolean z) {
        this.consentRequired = z;
    }

    @SimpleProperty(description = "Returns Consent Required Property")
    public boolean ConsentRequired() {
        return this.consentRequired;
    }

    @SimpleProperty(category = PropertyCategory.PRIVACY, description = "Sets whether privacy consent has been granted.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ConsentGiven(boolean z) {
        this.consentGiven = z;
    }

    @SimpleProperty(description = "Determines whether users must consent to privacy before sending their data to OneSignal. This should be set to true to ensure compliance")
    public boolean ConsentGiven() {
        return this.consentGiven;
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, description = "Location permissions enable geotagging in the OneSignal dashboard to send notifications to users based on their location.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LocationSharing(boolean z) {
        this.locationSharing = z;
    }

    @SimpleProperty(description = "Returns Location Sharing Property")
    public boolean LocationSharing() {
        return this.locationSharing;
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, description = "Set whether in-app messaging is enabled")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void InAppMessages(boolean z) {
        this.inAppMessages = z;
    }

    @SimpleProperty(description = "Returns If In-App Messaging is enabled")
    public boolean InAppMessages() {
        return this.inAppMessages;
    }

    @SimpleFunction(description = "Initialize OneSignal Component")
    public void InitializeOneSignal() {
        String str = this.appId;
        if (str == "") {
            FailedToInitialize("App Id can not be blank");
            return;
        }
        OneSignal.initWithContext(this.context, str);
        OneSignal.setConsentRequired(this.consentRequired);
        OneSignal.setConsentGiven(this.consentGiven);
        OneSignal.getLocation().setShared(this.locationSharing);
        OneSignal.getInAppMessages().setPaused(!this.inAppMessages);
        OneSignal.getNotifications().addPermissionObserver(new IPermissionObserver() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.1
            public void onNotificationPermissionChange(boolean z) {
                NiotronOneSignalPush.this.NotificationPermissionChanged(z);
            }
        });
        OneSignal.getUser().addObserver(new IUserStateObserver() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.2
            public void onUserStateChange(@NotNull UserChangedState userChangedState) {
                UserState current = userChangedState.getCurrent();
                NiotronOneSignalPush.this.UserStateChanged(current.getOnesignalId(), current.getExternalId());
            }
        });
        OneSignal.getUser().getPushSubscription().addObserver(new IPushSubscriptionObserver() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.3
            public void onPushSubscriptionChange(@NotNull PushSubscriptionChangedState pushSubscriptionChangedState) {
                PushSubscriptionState current = pushSubscriptionChangedState.getCurrent();
                NiotronOneSignalPush.this.PushSubscriptionStateChanged(current.getId(), current.getOptedIn(), current.getToken());
            }
        });
        OneSignal.getNotifications().addClickListener(new INotificationClickListener() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.4
            public void onClick(@NotNull INotificationClickEvent iNotificationClickEvent) {
                NiotronOneSignalPush.this.OpenedNotification(iNotificationClickEvent.getNotification().getNotificationId(), iNotificationClickEvent.getNotification().getTitle(), iNotificationClickEvent.getNotification().getBody(), String.valueOf(iNotificationClickEvent.getNotification().getAdditionalData()));
            }
        });
        OneSignal.getNotifications().addForegroundLifecycleListener(new INotificationLifecycleListener() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.5
            public void onWillDisplay(@NotNull INotificationWillDisplayEvent iNotificationWillDisplayEvent) {
                NiotronOneSignalPush.this.ReceivedNotification(iNotificationWillDisplayEvent.getNotification().getNotificationId(), iNotificationWillDisplayEvent.getNotification().getTitle(), iNotificationWillDisplayEvent.getNotification().getBody(), String.valueOf(iNotificationWillDisplayEvent.getNotification().getAdditionalData()));
            }
        });
        OneSignal.getInAppMessages().addLifecycleListener(new IInAppMessageLifecycleListener() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.6
            public void onWillDisplay(@NotNull IInAppMessageWillDisplayEvent iInAppMessageWillDisplayEvent) {
                NiotronOneSignalPush.this.InAppMessageWillDisplay(iInAppMessageWillDisplayEvent.getMessage().getMessageId());
            }

            public void onDidDisplay(@NotNull IInAppMessageDidDisplayEvent iInAppMessageDidDisplayEvent) {
                NiotronOneSignalPush.this.InAppMessageDisplayed(iInAppMessageDidDisplayEvent.getMessage().getMessageId());
            }

            public void onWillDismiss(@NotNull IInAppMessageWillDismissEvent iInAppMessageWillDismissEvent) {
                NiotronOneSignalPush.this.InAppMessageWillDismiss(iInAppMessageWillDismissEvent.getMessage().getMessageId());
            }

            public void onDidDismiss(@NotNull IInAppMessageDidDismissEvent iInAppMessageDidDismissEvent) {
                NiotronOneSignalPush.this.InAppMessageDismissed(iInAppMessageDidDismissEvent.getMessage().getMessageId());
            }
        });
        OneSignal.getInAppMessages().addClickListener(new IInAppMessageClickListener() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.7
            public void onClick(@NotNull IInAppMessageClickEvent iInAppMessageClickEvent) {
                NiotronOneSignalPush niotronOneSignalPush = NiotronOneSignalPush.this;
                String messageId = iInAppMessageClickEvent.getMessage().getMessageId();
                String actionId = iInAppMessageClickEvent.getResult().getActionId();
                String url = iInAppMessageClickEvent.getResult().getUrl();
                InAppMessageActionUrlType urlTarget = iInAppMessageClickEvent.getResult().getUrlTarget();
                StringBuilder sb = new StringBuilder();
                sb.append(urlTarget);
                niotronOneSignalPush.InAppMessageClicked(messageId, actionId, url, sb.toString(), iInAppMessageClickEvent.getResult().getClosingMessage());
            }
        });
        OneSignalInitialized();
    }

    @SimpleFunction(description = "Verbose Logging set to help debug issues, remove before releasing your app.")
    public void SetLogLevel(@Options(OneSignalLogLevel.class) Object obj) {
        OneSignal.getDebug().setLogLevel(getOneSignalLogLevel(obj));
    }

    private LogLevel getOneSignalLogLevel(Object obj) {
        try {
        } catch (Exception unused) {
            ErrorOccurred("Invalid LogLevel");
        }
        if (obj instanceof OneSignalLogLevel) {
            OneSignalLogLevel oneSignalLogLevel = (OneSignalLogLevel) obj;
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.None.toUnderlyingValue())) {
                return LogLevel.NONE;
            }
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.Info.toUnderlyingValue())) {
                return LogLevel.INFO;
            }
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.Verbose.toUnderlyingValue())) {
                return LogLevel.VERBOSE;
            }
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.Debug.toUnderlyingValue())) {
                return LogLevel.DEBUG;
            }
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.Warn.toUnderlyingValue())) {
                return LogLevel.WARN;
            }
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.Error.toUnderlyingValue())) {
                return LogLevel.ERROR;
            }
            if (oneSignalLogLevel.toUnderlyingValue().equalsIgnoreCase(OneSignalLogLevel.Fatal.toUnderlyingValue())) {
                return LogLevel.FATAL;
            }
            ErrorOccurred("Invalid LogLevel");
            return LogLevel.NONE;
        }
        ErrorOccurred("Invalid LogLevel");
        return LogLevel.NONE;
    }

    @SimpleFunction(description = "Prompt the user for location permissions to allow geotagging.")
    public void RequestLocationPermission() {
        OneSignal.getLocation().requestPermission(Continue.with(new Consumer<ContinueResult<Boolean>>() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.8
            @Override // java.util.function.Consumer
            public void accept(ContinueResult<Boolean> continueResult) {
                if (continueResult.isSuccess()) {
                    if (continueResult.getData() != null) {
                        NiotronOneSignalPush.this.LocationPermissionGranted(((Boolean) continueResult.getData()).booleanValue());
                        return;
                    } else {
                        NiotronOneSignalPush.this.LocationPermissionGranted(false);
                        return;
                    }
                }
                NiotronOneSignalPush.this.LocationPermissionGranted(false);
            }
        }));
    }

    @SimpleFunction(description = "Returns true of false if OneSignal SDK can Request Permission")
    public boolean CanRequestPermission() {
        return OneSignal.getNotifications().getCanRequestPermission();
    }

    @SimpleFunction(description = "Prompt the user for push permission to allow notifications.fallbackToSettings- option to display a prompt informing your users to re-enable notifications for the app after they've denied permissions when showing a push prompt is disallowed.")
    public void RequestPushNotificationPermission(boolean z) {
        OneSignal.getNotifications().requestPermission(z, Continue.with(new Consumer<ContinueResult<Boolean>>() { // from class: com.google.appinventor.components.runtime.NiotronOneSignalPush.9
            @Override // java.util.function.Consumer
            public void accept(ContinueResult<Boolean> continueResult) {
                if (continueResult.isSuccess()) {
                    if (continueResult.getData() != null) {
                        NiotronOneSignalPush.this.PushNotificationPermissionGranted(((Boolean) continueResult.getData()).booleanValue());
                        return;
                    } else {
                        NiotronOneSignalPush.this.PushNotificationPermissionGranted(false);
                        return;
                    }
                }
                NiotronOneSignalPush.this.PushNotificationPermissionGranted(false);
            }
        }));
    }

    @SimpleFunction(description = "The user's push subscription ID")
    public String GetUserSubscriptionId() {
        String id = OneSignal.getUser().getPushSubscription().getId();
        return id == null ? "-1" : id;
    }

    @SimpleFunction(description = "The user's push token")
    public String GetPushToken() {
        String token = OneSignal.getUser().getPushSubscription().getToken();
        return token == null ? "" : token;
    }

    @SimpleFunction(description = "Login Current User and set an External Id for them. externalId can be anything random")
    public void LoginUser(String str) {
        OneSignal.login(str);
    }

    @SimpleFunction(description = "Login Current User and set an External Id for them. externalId can be anything random")
    public void LoginUserWithJWTToken(String str, String str2) {
        OneSignal.login(str, str2);
    }

    @SimpleFunction(description = "Logout the current logged in user")
    public void LogoutUser() {
        OneSignal.logout();
    }

    @SimpleFunction(description = "Add an email to the current user")
    public void AddUserEmail(String str) {
        OneSignal.getUser().addEmail(str);
    }

    @SimpleFunction(description = "Remove Set User Email from the current user")
    public void RemoveUserEmail(String str) {
        OneSignal.getUser().removeEmail(str);
    }

    @SimpleFunction(description = "Add an User Phone Number to the current user")
    public void AddUserPhoneNumber(String str) {
        OneSignal.getUser().addSms(str);
    }

    @SimpleFunction(description = "Remove Set User Phone Number from the current user")
    public void RemoveUserPhoneNumber(String str) {
        OneSignal.getUser().removeSms(str);
    }

    @SimpleFunction(description = "OptIn will show the native Android notification permission prompt")
    public void OptInPushNotification() {
        OneSignal.getUser().getPushSubscription().optIn();
    }

    @SimpleFunction(description = "Opt Out of Push Notification")
    public void OptOutOfPushNotification() {
        OneSignal.getUser().getPushSubscription().optOut();
    }

    @SimpleFunction(description = "Returns boolean if Push Notification is Opted In")
    public boolean IsUserOptedInPushNotification() {
        return OneSignal.getUser().getPushSubscription().getOptedIn();
    }

    @SimpleFunction(description = "Clear all notification")
    public void ClearAllNotifications() {
        OneSignal.getNotifications().clearAllNotifications();
    }

    @SimpleFunction(description = "Clear notification by id")
    public void ClearNotification(int i) {
        OneSignal.getNotifications().removeNotification(i);
    }

    @SimpleFunction(description = "Add A Tag to the Current User")
    public void AddUserTag(String str, String str2) {
        OneSignal.getUser().addTag(str, str2);
    }

    @SimpleFunction(description = "Remove A Tag from the Current User")
    public void RemoveUserTag(String str) {
        OneSignal.getUser().removeTag(str);
    }

    @SimpleFunction(description = "Add an outcome with the provided name, captured against the current session")
    public void AddOutcome(String str) {
        OneSignal.getSession().addOutcome(str);
    }

    @SimpleFunction(description = "Add a unique outcome with the provided name, captured against the current session")
    public void AddUniqueOutcome(String str) {
        OneSignal.getSession().addUniqueOutcome(str);
    }

    @SimpleFunction(description = "Add an outcome with the provided name and value captured against the current session. value should be a number")
    public void AddUniqueOutcomeWithValue(String str, float f) {
        OneSignal.getSession().addOutcomeWithValue(str, f);
    }

    @SimpleFunction(description = "Add a trigger for the current user. If the trigger key already exists, it will be replaced with the value provided")
    public void AddTrigger(String str, String str2) {
        OneSignal.getInAppMessages().addTrigger(str, str2);
    }

    @SimpleFunction(description = "Remove the trigger with the provided key from the current user")
    public void RemoveTrigger(String str) {
        OneSignal.getInAppMessages().removeTrigger(str);
    }

    @SimpleFunction(description = "Clear all triggers from the current user")
    public void ClearAllTriggers() {
        OneSignal.getInAppMessages().clearTriggers();
    }

    @SimpleEvent(description = "OneSignal Component Initialized")
    public void OneSignalInitialized() {
        EventDispatcher.dispatchEvent(this, "OneSignalInitialized", new Object[0]);
    }

    @SimpleEvent(description = "OneSignal Component Failed to Initialize")
    public void FailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToInitialize", str);
    }

    @SimpleEvent(description = "Something Went Wrong in the Component")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "User State Changed")
    public void UserStateChanged(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "UserStateChanged", str, str2);
    }

    @SimpleEvent(description = "Push Subscription State Changed")
    public void PushSubscriptionStateChanged(String str, boolean z, String str2) {
        EventDispatcher.dispatchEvent(this, "PushSubscriptionStateChanged", str, Boolean.valueOf(z), str2);
    }

    @SimpleEvent(description = "Notification Permission was Changed")
    public void NotificationPermissionChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "NotificationPermissionChanged", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Location Permission Result")
    public void LocationPermissionGranted(boolean z) {
        EventDispatcher.dispatchEvent(this, "LocationPermissionGranted", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Push Notification Permission Result")
    public void PushNotificationPermissionGranted(boolean z) {
        EventDispatcher.dispatchEvent(this, "PushNotificationPermissionGranted", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Received notification")
    public void ReceivedNotification(String str, String str2, String str3, String str4) {
        EventDispatcher.dispatchEvent(this, "ReceivedNotification", str, str2, str3, str4);
    }

    @SimpleEvent(description = "Opened notification")
    public void OpenedNotification(String str, String str2, String str3, String str4) {
        EventDispatcher.dispatchEvent(this, "OpenedNotification", str, str2, str3, str4);
    }

    @SimpleEvent(description = "In App Message Will be Displayed")
    public void InAppMessageWillDisplay(String str) {
        EventDispatcher.dispatchEvent(this, "InAppMessageWillDisplay", str);
    }

    @SimpleEvent(description = "In App Message Displayed")
    public void InAppMessageDisplayed(String str) {
        EventDispatcher.dispatchEvent(this, "InAppMessageDisplayed", str);
    }

    @SimpleEvent(description = "In App Message Will be Dismissed")
    public void InAppMessageWillDismiss(String str) {
        EventDispatcher.dispatchEvent(this, "InAppMessageWillDismiss", str);
    }

    @SimpleEvent(description = "In App Message Dismissed")
    public void InAppMessageDismissed(String str) {
        EventDispatcher.dispatchEvent(this, "InAppMessageDismissed", str);
    }

    @SimpleEvent(description = "In App Message Clicked")
    public void InAppMessageClicked(String str, String str2, String str3, String str4, boolean z) {
        EventDispatcher.dispatchEvent(this, "InAppMessageClicked", str, str2, str3, str4, Boolean.valueOf(z));
    }
}
