.class abstract enum Lcom/google/common/collect/q5$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/q5$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/q5$c$a;

.field public static final enum b:Lcom/google/common/collect/q5$c$b;

.field public static final enum c:Lcom/google/common/collect/q5$c$c;

.field public static final enum d:Lcom/google/common/collect/q5$c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/google/common/collect/q5$c$a;

    invoke-direct {v0}, Lcom/google/common/collect/q5$c$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/q5$c;->a:Lcom/google/common/collect/q5$c$a;

    .line 57
    new-instance v0, Lcom/google/common/collect/q5$c$b;

    invoke-direct {v0}, Lcom/google/common/collect/q5$c$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/q5$c;->b:Lcom/google/common/collect/q5$c$b;

    .line 79
    new-instance v0, Lcom/google/common/collect/q5$c$c;

    invoke-direct {v0}, Lcom/google/common/collect/q5$c$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/q5$c;->c:Lcom/google/common/collect/q5$c$c;

    .line 105
    new-instance v0, Lcom/google/common/collect/q5$c$d;

    invoke-direct {v0}, Lcom/google/common/collect/q5$c$d;-><init>()V

    sput-object v0, Lcom/google/common/collect/q5$c;->d:Lcom/google/common/collect/q5$c$d;

    return-void
.end method


# virtual methods
.method public abstract resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
.end method
