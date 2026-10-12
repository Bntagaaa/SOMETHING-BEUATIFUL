.class abstract enum Lcom/google/common/hash/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/m$b;",
        ">;",
        "Lcom/google/common/hash/m$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/m$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    new-instance v0, Lcom/google/common/hash/m$b$a;

    invoke-direct {v0}, Lcom/google/common/hash/m$b$a;-><init>()V

    sput-object v0, Lcom/google/common/hash/m$b;->a:Lcom/google/common/hash/m$b$a;

    return-void
.end method
