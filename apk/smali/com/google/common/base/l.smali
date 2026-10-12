.class final Lcom/google/common/base/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/l$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/google/common/base/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 87
    new-instance v0, Lcom/google/common/base/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/l$b;-><init>(I)V

    .line 37
    sput-object v0, Lcom/google/common/base/l;->a:Lcom/google/common/base/l$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
