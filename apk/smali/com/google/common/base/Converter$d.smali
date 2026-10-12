.class final Lcom/google/common/base/Converter$d;
.super Lcom/google/common/base/Converter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/common/base/Converter$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 487
    new-instance v0, Lcom/google/common/base/Converter$d;

    invoke-direct {v0}, Lcom/google/common/base/Converter$d;-><init>()V

    sput-object v0, Lcom/google/common/base/Converter$d;->b:Lcom/google/common/base/Converter$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 1

    .line 506
    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Converter;

    return-object p1
.end method

.method public doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public reverse()Lcom/google/common/base/Converter$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter$d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic reverse()Lcom/google/common/base/Converter;
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/google/common/base/Converter$d;->reverse()Lcom/google/common/base/Converter$d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 516
    const-string v0, "Converter.identity()"

    return-object v0
.end method
