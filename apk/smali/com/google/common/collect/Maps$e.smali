.class abstract enum Lcom/google/common/collect/Maps$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/Maps$e;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/Maps$e$a;

.field public static final enum b:Lcom/google/common/collect/Maps$e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/google/common/collect/Maps$e$a;

    invoke-direct {v0}, Lcom/google/common/collect/Maps$e$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/Maps$e;->a:Lcom/google/common/collect/Maps$e$a;

    .line 93
    new-instance v0, Lcom/google/common/collect/Maps$e$b;

    invoke-direct {v0}, Lcom/google/common/collect/Maps$e$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    return-void
.end method
