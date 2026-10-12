.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;)I
    .locals 3

    .line 141
    iget v0, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    iget v1, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    iget v1, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    iget v2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    iget p2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    iget p1, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 136
    check-cast p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    check-cast p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;->compare(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;)I

    move-result p1

    return p1
.end method
