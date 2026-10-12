.class public abstract enum Lcom/google/common/util/concurrent/Service$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum NEW:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STARTING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STOPPING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/util/concurrent/Service$State;

.field public static final synthetic a:[Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 181
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Service$State$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 189
    new-instance v1, Lcom/google/common/util/concurrent/Service$State$b;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/Service$State$b;-><init>()V

    sput-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 197
    new-instance v2, Lcom/google/common/util/concurrent/Service$State$c;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/Service$State$c;-><init>()V

    sput-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 205
    new-instance v3, Lcom/google/common/util/concurrent/Service$State$d;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/Service$State$d;-><init>()V

    sput-object v3, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 216
    new-instance v4, Lcom/google/common/util/concurrent/Service$State$e;

    invoke-direct {v4}, Lcom/google/common/util/concurrent/Service$State$e;-><init>()V

    sput-object v4, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 227
    new-instance v5, Lcom/google/common/util/concurrent/Service$State$f;

    invoke-direct {v5}, Lcom/google/common/util/concurrent/Service$State$f;-><init>()V

    sput-object v5, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v6, 0x6

    .line 178
    new-array v6, v6, [Lcom/google/common/util/concurrent/Service$State;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/google/common/util/concurrent/Service$State;->a:[Lcom/google/common/util/concurrent/Service$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 178
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/Service$State;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 178
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->a:[Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/Service$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method
