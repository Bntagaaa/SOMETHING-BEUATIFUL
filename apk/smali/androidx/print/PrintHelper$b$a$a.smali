.class Landroidx/print/PrintHelper$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$b$a;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/print/PrintHelper$b$a;


# direct methods
.method public constructor <init>(Landroidx/print/PrintHelper$b$a;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/print/PrintHelper$b$a$a;->a:Landroidx/print/PrintHelper$b$a;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 432
    iget-object v0, p0, Landroidx/print/PrintHelper$b$a$a;->a:Landroidx/print/PrintHelper$b$a;

    iget-object v1, v0, Landroidx/print/PrintHelper$b$a;->e:Landroidx/print/PrintHelper$b;

    invoke-virtual {v1}, Landroidx/print/PrintHelper$b;->a()V

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
