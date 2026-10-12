.class Lcom/google/appinventor/components/runtime/File$9;
.super Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/File$9;->val$text:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/appinventor/components/runtime/File$9;->val$filename:Ljava/lang/String;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 6

    .line 661
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->onError(Ljava/io/IOException;)V

    .line 663
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->getScopedFile()Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    const/16 v3, 0x838

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public process(Ljava/io/OutputStreamWriter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 650
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/File$9$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/File$9$1;-><init>(Lcom/google/appinventor/components/runtime/File$9;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 5

    const/4 v0, 0x0

    .line 628
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    :try_start_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 633
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to create file "

    const-string v4, "FileComponent"

    .line 0
    invoke-static {v3, v2, v4}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 638
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    .line 639
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/16 v0, 0x837

    .line 638
    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 643
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    return-void
.end method
