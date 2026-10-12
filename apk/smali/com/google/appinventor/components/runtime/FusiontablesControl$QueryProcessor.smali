.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 513
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->progress:Landroid/app/ProgressDialog;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 512
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 527
    const-string v0, "FUSION"

    const-string v1, "Response: "

    const-string v2, "Fetching: "

    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    invoke-static {v3, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->q(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 528
    aget-object p1, p1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->i(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 530
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 531
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 532
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 535
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 536
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 512
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 547
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "processing query..."

    const/4 v2, 0x1

    const-string v3, "Fusiontables"

    invoke-static {v0, v3, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->progress:Landroid/app/ProgressDialog;

    return-void
.end method
