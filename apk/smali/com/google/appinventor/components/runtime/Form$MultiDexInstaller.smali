.class Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiDexInstaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field ourForm:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 313
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    .line 314
    const-string p1, "Form"

    const-string v0, "Doing Full MultiDex Install"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    .line 316
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 308
    check-cast p1, [Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 320
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 308
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
