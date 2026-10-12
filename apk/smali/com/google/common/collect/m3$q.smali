.class abstract enum Lcom/google/common/collect/m3$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/m3$q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/m3$q$a;

.field public static final enum b:Lcom/google/common/collect/m3$q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/google/common/collect/m3$q$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$q$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    .line 253
    new-instance v0, Lcom/google/common/collect/m3$q$b;

    invoke-direct {v0}, Lcom/google/common/collect/m3$q$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/base/Equivalence;
.end method
