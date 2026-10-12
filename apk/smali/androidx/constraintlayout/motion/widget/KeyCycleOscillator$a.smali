.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;",
        ">;"
    }
.end annotation


# virtual methods
.method public compare(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;)I
    .locals 0

    .line 180
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->a:I

    iget p2, p2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 177
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;

    check-cast p2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$a;->compare(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$r;)I

    move-result p1

    return p1
.end method
