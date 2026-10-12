.class public final synthetic Lkotlin/collections/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkotlin/collections/f;->a:I

    iput-object p1, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkotlin/collections/f;->a:I

    packed-switch v0, :pswitch_data_0

    .line 40
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {v0}, Lkotlin/time/AbstractLongTimeSource;->read()J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    return-object v0

    .line 1638
    :pswitch_1
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 11583
    :pswitch_2
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 11639
    :pswitch_3
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([Z)Lkotlin/collections/BooleanIterator;

    move-result-object v0

    return-object v0

    .line 11623
    :pswitch_4
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([F)Lkotlin/collections/FloatIterator;

    move-result-object v0

    return-object v0

    .line 11647
    :pswitch_5
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, [C

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([C)Lkotlin/collections/CharIterator;

    move-result-object v0

    return-object v0

    .line 11631
    :pswitch_6
    iget-object v0, p0, Lkotlin/collections/f;->b:Ljava/lang/Object;

    check-cast v0, [D

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([D)Lkotlin/collections/DoubleIterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
