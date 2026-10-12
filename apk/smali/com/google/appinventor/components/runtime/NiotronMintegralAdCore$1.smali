.class Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mbridge/msdk/out/SDKInitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->InitSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->SDKFailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronMintegralAdCore;->SDKInitialized()V

    return-void
.end method
