.class public final Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->FIREBASE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Analytics is an app measurement solution, available at no charge, that provides insight on app usage and user engagement."
    iconName = "images/niotronFirebaseAnalytics.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-analytics.aar, firebase-analytics.jar, play-services-measurement-api.aar, play-services-measurement-api.jar, firebase-installations.aar, firebase-installations.jar, firebase-common.aar, firebase-common.jar, play-services-measurement.aar, play-services-measurement.jar, play-services-measurement-sdk.aar, play-services-measurement-sdk.jar, play-services-measurement-impl.aar, play-services-measurement-impl.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-measurement-sdk-api.aar, play-services-measurement-sdk-api.jar, play-services-measurement-base.aar, play-services-measurement-base.jar, play-services-stats.aar, play-services-stats.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, firebase-components.aar, firebase-components.jar, annotation.jar, firebase-annotations.jar, javax.inject.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WAKE_LOCK, com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->activity:Landroid/app/Activity;

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->context:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    const-string p1, "This component cannot be used in the companion. Please build your app to test this component."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method


# virtual methods
.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 61
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToLogEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to LOG event"
    .end annotation

    .line 111
    const-string v0, "FailedToLogEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log a single Event to Firebase"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string p1, "This component cannot be used in the companion. Please build your app to test this component."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public LogEvents(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log multiple Events to Firebase"
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string p1, "This component cannot be used in the companion. Please build your app to test this component."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 83
    :goto_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 84
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    :goto_1
    invoke-virtual {p3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_3
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public SetUserId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a custom user id for the user to identify the individual user"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string p1, "This component cannot be used in the companion. Please build your app to test this component."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public SetUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set Properties for the Individual User"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string p1, "This component cannot be used in the companion. Please build your app to test this component."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseAnalytics;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
