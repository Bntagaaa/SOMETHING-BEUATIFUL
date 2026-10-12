.class Lcom/google/appinventor/components/runtime/File$1;
.super Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/File$1;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$1$1;-><init>(Lcom/google/appinventor/components/runtime/File$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/16 p1, 0x83d

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->reportError(I[Ljava/lang/Object;)V

    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    return-void

    .line 199
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/16 p1, 0x83c

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->reportError(I[Ljava/lang/Object;)V

    return-void
.end method
