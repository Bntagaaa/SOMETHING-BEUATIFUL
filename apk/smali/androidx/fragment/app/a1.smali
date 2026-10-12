.class Landroidx/fragment/app/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b1$b;

.field public final synthetic b:Landroidx/fragment/app/b1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b1;Landroidx/fragment/app/b1$b;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/a1;->b:Landroidx/fragment/app/b1;

    iput-object p2, p0, Landroidx/fragment/app/a1;->a:Landroidx/fragment/app/b1$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    iget-object v0, p0, Landroidx/fragment/app/a1;->b:Landroidx/fragment/app/b1;

    iget-object v1, v0, Landroidx/fragment/app/b1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/a1;->a:Landroidx/fragment/app/b1$b;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, v0, Landroidx/fragment/app/b1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
