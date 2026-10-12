.class Landroidx/dynamicanimation/animation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/a$c;,
        Landroidx/dynamicanimation/animation/a$d;,
        Landroidx/dynamicanimation/animation/a$e;,
        Landroidx/dynamicanimation/animation/a$a;,
        Landroidx/dynamicanimation/animation/a$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Landroidx/collection/SimpleArrayMap;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/dynamicanimation/animation/a$a;

.field public d:Landroidx/dynamicanimation/animation/a$e;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/a;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/a;->a:Landroidx/collection/SimpleArrayMap;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/a;->b:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Landroidx/dynamicanimation/animation/a$a;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/a$a;-><init>(Landroidx/dynamicanimation/animation/a;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/a;->c:Landroidx/dynamicanimation/animation/a$a;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/a;->e:Z

    return-void
.end method

.method public static getInstance()Landroidx/dynamicanimation/animation/a;
    .locals 2

    .line 88
    sget-object v0, Landroidx/dynamicanimation/animation/a;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Landroidx/dynamicanimation/animation/a;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/a;

    return-object v0
.end method


# virtual methods
.method public addAnimationFrameCallback(Landroidx/dynamicanimation/animation/a$b;J)V
    .locals 3

    .line 125
    iget-object v0, p0, Landroidx/dynamicanimation/animation/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/a$e;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Landroidx/dynamicanimation/animation/a$e;

    iget-object v2, p0, Landroidx/dynamicanimation/animation/a;->c:Landroidx/dynamicanimation/animation/a$a;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/a$e;-><init>(Landroidx/dynamicanimation/animation/a$a;)V

    iput-object v1, p0, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/a$e;

    .line 118
    :cond_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/a$e;

    .line 126
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/a$e;->a()V

    .line 128
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    .line 133
    iget-object v0, p0, Landroidx/dynamicanimation/animation/a;->a:Landroidx/collection/SimpleArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public removeCallback(Landroidx/dynamicanimation/animation/a$b;)V
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/dynamicanimation/animation/a;->a:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroidx/dynamicanimation/animation/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/a;->e:Z

    :cond_0
    return-void
.end method
