.class Lcom/google/appinventor/components/runtime/AsyncTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->CallAfterDelayWithArgs(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic val$arguments:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$delay:I

.field final synthetic val$procedureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$4;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$4;->val$delay:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$4;->val$procedureName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/AsyncTask$4;->val$arguments:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$4;->val$delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$4;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/AsyncTask$4$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AsyncTask$4$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
