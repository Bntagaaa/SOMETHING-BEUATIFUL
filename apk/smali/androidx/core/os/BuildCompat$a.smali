.class final Landroidx/core/os/BuildCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    invoke-static {}, La/a;->c()I

    move-result v0

    sput v0, Landroidx/core/os/BuildCompat$a;->a:I

    .line 303
    invoke-static {}, La/a;->y()I

    move-result v0

    sput v0, Landroidx/core/os/BuildCompat$a;->b:I

    .line 304
    invoke-static {}, La/a;->C()I

    move-result v0

    sput v0, Landroidx/core/os/BuildCompat$a;->c:I

    .line 305
    invoke-static {}, La/a;->D()I

    move-result v0

    sput v0, Landroidx/core/os/BuildCompat$a;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
