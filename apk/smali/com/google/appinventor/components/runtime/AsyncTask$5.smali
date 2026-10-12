.class Lcom/google/appinventor/components/runtime/AsyncTask$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$caller:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$caller:Ljava/lang/String;

    const/4 v3, 0x1

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v4, "an unknown error occurred"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    const/16 v3, 0xce4

    .line 231
    invoke-virtual {v1, v0, v2, v3, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
