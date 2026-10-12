.class Lcom/google/appinventor/components/runtime/AsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->CallAsynchronous(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic val$procedureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->val$procedureName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->val$procedureName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CallAsynchronous"

    invoke-static {v0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/AsyncTask;->a(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
