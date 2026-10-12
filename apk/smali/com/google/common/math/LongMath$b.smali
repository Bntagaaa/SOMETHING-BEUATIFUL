.class abstract enum Lcom/google/common/math/LongMath$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/math/LongMath$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/math/LongMath$b$a;

.field public static final enum b:Lcom/google/common/math/LongMath$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1068
    new-instance v0, Lcom/google/common/math/LongMath$b$a;

    invoke-direct {v0}, Lcom/google/common/math/LongMath$b$a;-><init>()V

    sput-object v0, Lcom/google/common/math/LongMath$b;->a:Lcom/google/common/math/LongMath$b$a;

    .line 1086
    new-instance v0, Lcom/google/common/math/LongMath$b$b;

    invoke-direct {v0}, Lcom/google/common/math/LongMath$b$b;-><init>()V

    sput-object v0, Lcom/google/common/math/LongMath$b;->b:Lcom/google/common/math/LongMath$b$b;

    return-void
.end method


# virtual methods
.method public abstract a(JJJ)J
.end method

.method public abstract b(JJ)J
.end method
