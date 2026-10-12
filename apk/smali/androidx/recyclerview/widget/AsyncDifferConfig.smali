.class public final Landroidx/recyclerview/widget/AsyncDifferConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncDifferConfig;->a:Ljava/util/concurrent/Executor;

    .line 49
    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncDifferConfig;->b:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncDifferConfig;->c:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncDifferConfig;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncDifferConfig;->c:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object v0
.end method

.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncDifferConfig;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
