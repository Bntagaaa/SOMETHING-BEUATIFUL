.class Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/adjoe/sdk/AdjoeOfferwallListener;


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

    .line 164
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$2;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfferwallClosed(Ljava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$2;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->OfferwallClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallOpened(Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$2;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->OfferwallOpened(Ljava/lang/String;)V

    return-void
.end method
