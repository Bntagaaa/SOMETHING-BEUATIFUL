.class Lcom/google/appinventor/components/runtime/NiotronPollfish$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pollfish/callback/PollfishUserRejectedSurveyListener;


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

    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRejectedSurvey()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->UserRejectedSurvey()V

    return-void
.end method
