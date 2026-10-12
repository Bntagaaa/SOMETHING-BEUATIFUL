.class public Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ReplForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchemeInterface"
.end annotation


# instance fields
.field scheme:Lgnu/expr/Language;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string p1, "scheme"

    invoke-static {p1}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->scheme:Lgnu/expr/Language;

    .line 103
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->adoptMainThreadClassLoader()V

    return-void
.end method

.method private adoptMainThreadClassLoader()V
    .locals 3

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    new-instance v1, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
