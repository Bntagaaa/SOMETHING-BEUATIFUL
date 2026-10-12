.class Landroidx/core/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/app/e$b;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/app/e$b;Ljava/lang/Object;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/c;->a:Landroidx/core/app/e$b;

    iput-object p2, p0, Landroidx/core/app/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/core/app/c;->a:Landroidx/core/app/e$b;

    iget-object v1, p0, Landroidx/core/app/c;->b:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/core/app/e$b;->a:Ljava/lang/Object;

    return-void
.end method
