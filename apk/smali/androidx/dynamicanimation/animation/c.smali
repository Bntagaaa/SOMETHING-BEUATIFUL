.class Landroidx/dynamicanimation/animation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Landroidx/dynamicanimation/animation/a$e;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/a$e;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/c;->a:Landroidx/dynamicanimation/animation/a$e;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 10

    .line 207
    iget-object p1, p0, Landroidx/dynamicanimation/animation/c;->a:Landroidx/dynamicanimation/animation/a$e;

    iget-object p1, p1, Landroidx/dynamicanimation/animation/a$c;->a:Landroidx/dynamicanimation/animation/a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p1, Landroidx/dynamicanimation/animation/a$a;->a:Landroidx/dynamicanimation/animation/a;

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 152
    :goto_0
    iget-object v5, p1, Landroidx/dynamicanimation/animation/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 153
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/dynamicanimation/animation/a$b;

    if-nez v5, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    iget-object v6, p1, Landroidx/dynamicanimation/animation/a;->a:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-gez v9, :cond_2

    .line 176
    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_1
    invoke-interface {v5, v0, v1}, Landroidx/dynamicanimation/animation/a$b;->doAnimationFrame(J)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_3
    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/a;->e:Z

    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 185
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 186
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 189
    :cond_5
    iput-boolean p2, p1, Landroidx/dynamicanimation/animation/a;->e:Z

    .line 62
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 111
    iget-object p2, p1, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/a$e;

    if-nez p2, :cond_7

    .line 113
    new-instance p2, Landroidx/dynamicanimation/animation/a$e;

    iget-object v0, p1, Landroidx/dynamicanimation/animation/a;->c:Landroidx/dynamicanimation/animation/a$a;

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/a$e;-><init>(Landroidx/dynamicanimation/animation/a$a;)V

    iput-object p2, p1, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/a$e;

    .line 118
    :cond_7
    iget-object p1, p1, Landroidx/dynamicanimation/animation/a;->d:Landroidx/dynamicanimation/animation/a$e;

    .line 63
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/a$e;->a()V

    :cond_8
    return-void
.end method
