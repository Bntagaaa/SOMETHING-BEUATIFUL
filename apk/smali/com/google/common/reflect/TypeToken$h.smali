.class abstract enum Lcom/google/common/reflect/TypeToken$h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/TypeToken$h;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/google/common/reflect/TypeToken<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/reflect/TypeToken$h$a;

.field public static final enum b:Lcom/google/common/reflect/TypeToken$h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 804
    new-instance v0, Lcom/google/common/reflect/TypeToken$h$a;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeToken$h$a;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeToken$h;->a:Lcom/google/common/reflect/TypeToken$h$a;

    .line 811
    new-instance v0, Lcom/google/common/reflect/TypeToken$h$b;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeToken$h$b;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeToken$h;->b:Lcom/google/common/reflect/TypeToken$h$b;

    return-void
.end method
