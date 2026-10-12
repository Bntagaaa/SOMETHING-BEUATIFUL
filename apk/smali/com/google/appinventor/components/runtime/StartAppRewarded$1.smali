.class Lcom/google/appinventor/components/runtime/StartAppRewarded$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/StartAppRewarded;->LoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/StartAppRewarded;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/StartAppRewarded;->AdCompleted()V

    return-void
.end method
