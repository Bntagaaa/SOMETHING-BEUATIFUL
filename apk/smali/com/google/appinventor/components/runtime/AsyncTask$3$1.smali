.class Lcom/google/appinventor/components/runtime/AsyncTask$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/AsyncTask$3;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask$3;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$3;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->val$procedureName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CallAfterDelay"

    invoke-static {v1, v3, v0, v2}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$3;

    iget-object v2, v1, Lcom/google/appinventor/components/runtime/AsyncTask$3;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AsyncTask$3;->val$procedureName:Ljava/lang/String;

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/appinventor/components/runtime/AsyncTask;->CallFinishedWithResult(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method
