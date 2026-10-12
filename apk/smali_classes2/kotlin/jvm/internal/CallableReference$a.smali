.class Lkotlin/jvm/internal/CallableReference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/CallableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation


# static fields
.field public static final a:Lkotlin/jvm/internal/CallableReference$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lkotlin/jvm/internal/CallableReference$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/CallableReference$a;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/CallableReference$a;->a:Lkotlin/jvm/internal/CallableReference$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
