.class Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->StartConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->ServiceDisconnected()V

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    const-string v0, "Feature not supported"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    const-string v0, "Service unavailable"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v2

    .line 64
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v4

    .line 68
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result v6

    .line 71
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object v7

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    invoke-virtual/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->ServiceConnected(Ljava/lang/String;JJZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronInstallReferrer;->ErrorOccurred(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
