.class abstract enum Lcom/google/common/io/Files$f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/Files$f;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/io/Files$f$a;

.field public static final enum b:Lcom/google/common/io/Files$f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 913
    new-instance v0, Lcom/google/common/io/Files$f$a;

    invoke-direct {v0}, Lcom/google/common/io/Files$f$a;-><init>()V

    sput-object v0, Lcom/google/common/io/Files$f;->a:Lcom/google/common/io/Files$f$a;

    .line 925
    new-instance v0, Lcom/google/common/io/Files$f$b;

    invoke-direct {v0}, Lcom/google/common/io/Files$f$b;-><init>()V

    sput-object v0, Lcom/google/common/io/Files$f;->b:Lcom/google/common/io/Files$f$b;

    return-void
.end method
