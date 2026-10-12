.class Lcom/google/appinventor/components/runtime/File$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/File$1;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$1;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V

    return-void
.end method
