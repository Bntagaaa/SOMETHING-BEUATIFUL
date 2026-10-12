.class Landroidx/core/text/TextDirectionHeuristicsCompat$f;
.super Landroidx/core/text/TextDirectionHeuristicsCompat$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final b:Landroidx/core/text/TextDirectionHeuristicsCompat$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$f;

    invoke-direct {v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$f;-><init>()V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$f;->b:Landroidx/core/text/TextDirectionHeuristicsCompat$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$d;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$c;)V

    return-void
.end method


# virtual methods
.method public defaultIsRtl()Z
    .locals 2

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
