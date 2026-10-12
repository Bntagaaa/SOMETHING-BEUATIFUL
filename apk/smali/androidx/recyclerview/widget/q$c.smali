.class Landroidx/recyclerview/widget/q$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/q$d;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/recyclerview/widget/q$d;
    .locals 3

    .line 239
    iget-object v0, p0, Landroidx/recyclerview/widget/q$c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 241
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    iput-object v2, p0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    .line 245
    monitor-exit v0

    return-object v1

    .line 246
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(I)V
    .locals 5

    .line 271
    iget-object v0, p0, Landroidx/recyclerview/widget/q$c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/recyclerview/widget/q$d;->b:I

    if-ne v2, p1, :cond_0

    .line 274
    iget-object v2, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    iput-object v2, p0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    .line 275
    invoke-virtual {v1}, Landroidx/recyclerview/widget/q$d;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_2

    .line 279
    iget-object v2, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    :goto_1
    if-eqz v2, :cond_2

    .line 281
    iget-object v3, v2, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    .line 282
    iget v4, v2, Landroidx/recyclerview/widget/q$d;->b:I

    if-ne v4, p1, :cond_1

    .line 283
    iput-object v3, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    .line 284
    invoke-virtual {v2}, Landroidx/recyclerview/widget/q$d;->b()V

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    move-object v2, v3

    goto :goto_1

    .line 291
    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroidx/recyclerview/widget/q$d;)V
    .locals 3

    .line 257
    iget-object v0, p0, Landroidx/recyclerview/widget/q$c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    if-nez v1, :cond_0

    .line 259
    iput-object p1, p0, Landroidx/recyclerview/widget/q$c;->a:Landroidx/recyclerview/widget/q$d;

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 263
    :cond_0
    :goto_0
    iget-object v2, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 266
    :cond_1
    iput-object p1, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    .line 267
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
