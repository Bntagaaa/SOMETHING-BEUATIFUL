.class public final synthetic Lkotlin/comparisons/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkotlin/comparisons/a;->a:I

    iput-object p1, p0, Lkotlin/comparisons/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, Lkotlin/comparisons/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 91
    iget-object v0, p0, Lkotlin/comparisons/a;->b:Ljava/lang/Object;

    check-cast v0, [Lkotlin/jvm/functions/Function1;

    .line 24
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 25
    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    .line 26
    invoke-interface {v4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 27
    invoke-static {v5, v4}, Lkotlin/comparisons/c;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :pswitch_0
    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    .line 238
    :cond_4
    iget-object v0, p0, Lkotlin/comparisons/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    :goto_2
    return p1

    :pswitch_1
    if-ne p1, p2, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    const/4 p1, -0x1

    goto :goto_3

    .line 265
    :cond_7
    iget-object v0, p0, Lkotlin/comparisons/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
