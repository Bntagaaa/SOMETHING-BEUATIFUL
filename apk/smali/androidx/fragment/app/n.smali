.class Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1;)V
    .locals 0

    .line 2777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/b1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2780
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/b1;

    invoke-virtual {v0}, Landroidx/fragment/app/b1;->c()V

    return-void
.end method
