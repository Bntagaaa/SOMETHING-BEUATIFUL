.class Landroidx/core/text/TextDirectionHeuristicsCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Landroidx/core/text/TextDirectionHeuristicsCompat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$a;

    .line 231
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 235
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$a;->a:Landroidx/core/text/TextDirectionHeuristicsCompat$a;

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6

    const/4 v0, 0x1

    add-int/2addr p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge p2, p3, :cond_4

    .line 208
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    sget-object v5, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    if-eqz v4, :cond_1

    if-eq v4, v0, :cond_0

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    add-int/2addr p2, v0

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    if-eqz v2, :cond_5

    return v0

    :cond_5
    return v3
.end method
