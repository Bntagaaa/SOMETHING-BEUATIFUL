.class Lcom/google/common/collect/e1;
.super Lcom/google/common/collect/ImmutableListMultimap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lcom/google/common/collect/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/common/collect/e1;

    invoke-direct {v0}, Lcom/google/common/collect/e1;-><init>()V

    sput-object v0, Lcom/google/common/collect/e1;->i:Lcom/google/common/collect/e1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultimap;-><init>(ILcom/google/common/collect/ImmutableMap;)V

    return-void
.end method
