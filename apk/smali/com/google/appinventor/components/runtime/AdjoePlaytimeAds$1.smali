.class Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/adjoe/sdk/AdjoeInitialisationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialisationError(Ljava/lang/Exception;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An internal service error occurred."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->InitializeSDK()V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->InitialisationError(Ljava/lang/String;)V

    return-void
.end method

.method public onInitialisationFinished()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->InitialisationFinished()V

    return-void
.end method
