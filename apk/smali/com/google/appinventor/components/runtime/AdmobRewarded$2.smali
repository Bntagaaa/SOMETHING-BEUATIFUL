.class Lcom/google/appinventor/components/runtime/AdmobRewarded$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobRewarded;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdmobRewarded;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdOnReward(Ljava/lang/String;I)V

    return-void
.end method
