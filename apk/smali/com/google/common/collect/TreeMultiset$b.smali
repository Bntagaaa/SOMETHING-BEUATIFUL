.class abstract enum Lcom/google/common/collect/TreeMultiset$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/TreeMultiset$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/TreeMultiset$b$a;

.field public static final enum b:Lcom/google/common/collect/TreeMultiset$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b$a;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$b;->a:Lcom/google/common/collect/TreeMultiset$b$a;

    .line 141
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b$b;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$b;->b:Lcom/google/common/collect/TreeMultiset$b$b;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/common/collect/TreeMultiset$c;)I
.end method

.method public abstract b(Lcom/google/common/collect/TreeMultiset$c;)J
.end method
