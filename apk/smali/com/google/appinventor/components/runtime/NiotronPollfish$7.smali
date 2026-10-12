.class Lcom/google/appinventor/components/runtime/NiotronPollfish$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pollfish/callback/PollfishSurveyReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronPollfish;->InitializePollfish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish$7;->this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollfishSurveyReceived(Lcom/pollfish/callback/SurveyInfo;)V
    .locals 6
    .param p1    # Lcom/pollfish/callback/SurveyInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 131
    const-string p1, ""

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getRewardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getRewardValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyCPA()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyIR()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pollfish/callback/SurveyInfo;->getSurveyLOI()Ljava/lang/Integer;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{Reward Name : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",Reward Value : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",CPA : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",IR : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",LOI : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish$7;->this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->SurveyReceived(Ljava/lang/String;)V

    return-void
.end method
