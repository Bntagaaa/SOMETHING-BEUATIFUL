.class Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/RewardedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->LoadRewarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/chartboost/sdk/events/ClickEvent;Lcom/chartboost/sdk/events/ClickError;)V
    .locals 0
    .param p1    # Lcom/chartboost/sdk/events/ClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chartboost/sdk/events/ClickError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 65
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdClicked()V

    return-void
.end method

.method public onAdDismiss(Lcom/chartboost/sdk/events/DismissEvent;)V
    .locals 0
    .param p1    # Lcom/chartboost/sdk/events/DismissEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 45
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdDismissed()V

    return-void
.end method

.method public onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V
    .locals 0
    .param p1    # Lcom/chartboost/sdk/events/CacheEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chartboost/sdk/events/CacheError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdLoaded()V

    return-void
.end method

.method public onAdRequestedToShow(Lcom/chartboost/sdk/events/ShowEvent;)V
    .locals 0
    .param p1    # Lcom/chartboost/sdk/events/ShowEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdRequestedToShow()V

    return-void
.end method

.method public onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V
    .locals 0
    .param p1    # Lcom/chartboost/sdk/events/ShowEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chartboost/sdk/events/ShowError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdDisplayed()V

    return-void
.end method

.method public onImpressionRecorded(Lcom/chartboost/sdk/events/ImpressionEvent;)V
    .locals 0
    .param p1    # Lcom/chartboost/sdk/events/ImpressionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdImpressionRecorded()V

    return-void
.end method

.method public onRewardEarned(Lcom/chartboost/sdk/events/RewardEvent;)V
    .locals 1
    .param p1    # Lcom/chartboost/sdk/events/RewardEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/RewardEvent;->getReward()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostRewarded;->AdRewarded(I)V

    return-void
.end method
