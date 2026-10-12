.class abstract enum Lcom/google/common/base/Predicates$j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/Predicates$j;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/Predicates$j$a;

.field public static final enum b:Lcom/google/common/base/Predicates$j$b;

.field public static final enum c:Lcom/google/common/base/Predicates$j$c;

.field public static final enum d:Lcom/google/common/base/Predicates$j$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Lcom/google/common/base/Predicates$j$a;

    invoke-direct {v0}, Lcom/google/common/base/Predicates$j$a;-><init>()V

    sput-object v0, Lcom/google/common/base/Predicates$j;->a:Lcom/google/common/base/Predicates$j$a;

    .line 264
    new-instance v0, Lcom/google/common/base/Predicates$j$b;

    invoke-direct {v0}, Lcom/google/common/base/Predicates$j$b;-><init>()V

    sput-object v0, Lcom/google/common/base/Predicates$j;->b:Lcom/google/common/base/Predicates$j$b;

    .line 276
    new-instance v0, Lcom/google/common/base/Predicates$j$c;

    invoke-direct {v0}, Lcom/google/common/base/Predicates$j$c;-><init>()V

    sput-object v0, Lcom/google/common/base/Predicates$j;->c:Lcom/google/common/base/Predicates$j$c;

    .line 288
    new-instance v0, Lcom/google/common/base/Predicates$j$d;

    invoke-direct {v0}, Lcom/google/common/base/Predicates$j$d;-><init>()V

    sput-object v0, Lcom/google/common/base/Predicates$j;->d:Lcom/google/common/base/Predicates$j$d;

    return-void
.end method
