.class Landroidx/recyclerview/widget/q$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static i:Landroidx/recyclerview/widget/q$d;

.field public static final j:Ljava/lang/Object;


# instance fields
.field public a:Landroidx/recyclerview/widget/q$d;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/recyclerview/widget/TileList$Tile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/q$d;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIIIILandroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/q$d;
    .locals 3

    .line 204
    sget-object v0, Landroidx/recyclerview/widget/q$d;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/q$d;->i:Landroidx/recyclerview/widget/q$d;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Landroidx/recyclerview/widget/q$d;

    invoke-direct {v1}, Landroidx/recyclerview/widget/q$d;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 210
    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    sput-object v2, Landroidx/recyclerview/widget/q$d;->i:Landroidx/recyclerview/widget/q$d;

    const/4 v2, 0x0

    .line 211
    iput-object v2, v1, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    .line 213
    :goto_0
    iput p0, v1, Landroidx/recyclerview/widget/q$d;->b:I

    .line 214
    iput p1, v1, Landroidx/recyclerview/widget/q$d;->c:I

    .line 215
    iput p2, v1, Landroidx/recyclerview/widget/q$d;->d:I

    .line 216
    iput p3, v1, Landroidx/recyclerview/widget/q$d;->e:I

    .line 217
    iput p4, v1, Landroidx/recyclerview/widget/q$d;->f:I

    .line 218
    iput p5, v1, Landroidx/recyclerview/widget/q$d;->g:I

    .line 219
    iput-object p6, v1, Landroidx/recyclerview/widget/q$d;->h:Landroidx/recyclerview/widget/TileList$Tile;

    .line 220
    monitor-exit v0

    return-object v1

    .line 221
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    const/4 v1, 0x0

    .line 192
    iput v1, p0, Landroidx/recyclerview/widget/q$d;->g:I

    iput v1, p0, Landroidx/recyclerview/widget/q$d;->f:I

    iput v1, p0, Landroidx/recyclerview/widget/q$d;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/q$d;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/q$d;->c:I

    iput v1, p0, Landroidx/recyclerview/widget/q$d;->b:I

    .line 193
    iput-object v0, p0, Landroidx/recyclerview/widget/q$d;->h:Landroidx/recyclerview/widget/TileList$Tile;

    .line 194
    sget-object v0, Landroidx/recyclerview/widget/q$d;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/q$d;->i:Landroidx/recyclerview/widget/q$d;

    if-eqz v1, :cond_0

    .line 196
    iput-object v1, p0, Landroidx/recyclerview/widget/q$d;->a:Landroidx/recyclerview/widget/q$d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 198
    :cond_0
    :goto_0
    sput-object p0, Landroidx/recyclerview/widget/q$d;->i:Landroidx/recyclerview/widget/q$d;

    .line 199
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
