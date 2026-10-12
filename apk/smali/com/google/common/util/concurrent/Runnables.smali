.class public final Lcom/google/common/util/concurrent/Runnables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/common/util/concurrent/Runnables$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Runnables$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Runnables;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNothing()Ljava/lang/Runnable;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/common/util/concurrent/Runnables;->a:Ljava/lang/Runnable;

    return-object v0
.end method
