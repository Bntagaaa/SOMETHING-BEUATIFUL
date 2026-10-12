.class abstract enum Lcom/google/common/collect/q5$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/q5$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/q5$b$a;

.field public static final enum b:Lcom/google/common/collect/q5$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/google/common/collect/q5$b$a;

    invoke-direct {v0}, Lcom/google/common/collect/q5$b$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/q5$b;->a:Lcom/google/common/collect/q5$b$a;

    .line 146
    new-instance v0, Lcom/google/common/collect/q5$b$b;

    invoke-direct {v0}, Lcom/google/common/collect/q5$b$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/q5$b;->b:Lcom/google/common/collect/q5$b$b;

    return-void
.end method


# virtual methods
.method public abstract resultIndex(I)I
.end method
