.class Lcom/google/android/material/snackbar/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/l;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/l;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/snackbar/l$a;->a:Lcom/google/android/material/snackbar/l;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/l$a;->a:Lcom/google/android/material/snackbar/l;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/snackbar/l$c;

    .line 240
    iget-object v1, v0, Lcom/google/android/material/snackbar/l;->a:Ljava/lang/Object;

    .line 240
    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v2, v0, Lcom/google/android/material/snackbar/l;->c:Lcom/google/android/material/snackbar/l$c;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Lcom/google/android/material/snackbar/l;->d:Lcom/google/android/material/snackbar/l$c;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 242
    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/snackbar/l;->a(Lcom/google/android/material/snackbar/l$c;I)Z

    .line 244
    :cond_2
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
