.class Lcom/google/appinventor/components/runtime/AsyncTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/AsyncTask$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$1;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->val$procedureName:Ljava/lang/String;

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/AsyncTask;->CallFinishedWithResult(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method
