.class abstract enum Lcom/google/common/reflect/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/reflect/m$b;

.field public static final synthetic b:[Lcom/google/common/reflect/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 107
    new-instance v0, Lcom/google/common/reflect/m$b$a;

    invoke-direct {v0}, Lcom/google/common/reflect/m$b$a;-><init>()V

    .line 114
    new-instance v1, Lcom/google/common/reflect/m$b$b;

    invoke-direct {v1}, Lcom/google/common/reflect/m$b$b;-><init>()V

    const/4 v2, 0x2

    .line 106
    new-array v2, v2, [Lcom/google/common/reflect/m$b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/common/reflect/m$b;->b:[Lcom/google/common/reflect/m$b;

    .line 133
    new-instance v1, Lcom/google/common/reflect/p;

    invoke-direct {v1}, Lcom/google/common/reflect/p;-><init>()V

    const-class v1, Lcom/google/common/reflect/p;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 135
    invoke-static {}, Lcom/google/common/reflect/m$b;->values()[Lcom/google/common/reflect/m$b;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 136
    const-class v6, Lcom/google/common/reflect/o;

    invoke-virtual {v5, v6}, Lcom/google/common/reflect/m$b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 129
    sput-object v5, Lcom/google/common/reflect/m$b;->a:Lcom/google/common/reflect/m$b;

    return-void

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static values()[Lcom/google/common/reflect/m$b;
    .locals 1

    .line 106
    sget-object v0, Lcom/google/common/reflect/m$b;->b:[Lcom/google/common/reflect/m$b;

    invoke-virtual {v0}, [Lcom/google/common/reflect/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/m$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Ljava/lang/Class;
.end method
