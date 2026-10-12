.class Lcom/google/appinventor/components/runtime/AppsFlyer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/attribution/AppsFlyerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppsFlyer;->LogEvent(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppsFlyer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$3;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$3;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/AppsFlyer;->FailedLoggingError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$3;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppsFlyer;->LoggedEvent()V

    return-void
.end method
