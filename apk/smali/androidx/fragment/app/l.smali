.class Landroidx/fragment/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/c$d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c$d;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/c$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 642
    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/c$d;

    invoke-virtual {v0}, Landroidx/fragment/app/c$c;->a()V

    return-void
.end method
