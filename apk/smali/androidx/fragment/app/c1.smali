.class Landroidx/fragment/app/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b1$c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1$c;)V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c1;->a:Landroidx/fragment/app/b1$c;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 530
    iget-object v0, p0, Landroidx/fragment/app/c1;->a:Landroidx/fragment/app/b1$c;

    invoke-virtual {v0}, Landroidx/fragment/app/b1$c;->a()V

    return-void
.end method
