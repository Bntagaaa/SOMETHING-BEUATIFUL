.class Landroidx/core/provider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/b;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput p2, p0, Landroidx/core/provider/b;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Landroidx/core/provider/b;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget v1, p0, Landroidx/core/provider/b;->b:I

    invoke-virtual {v0, v1}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
