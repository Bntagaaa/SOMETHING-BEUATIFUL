.class public final synthetic Lkotlin/collections/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[S


# direct methods
.method public synthetic constructor <init>([SI)V
    .locals 0

    iput p2, p0, Lkotlin/collections/g;->a:I

    iput-object p1, p0, Lkotlin/collections/g;->b:[S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/collections/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 5247
    iget-object v0, p0, Lkotlin/collections/g;->b:[S

    invoke-static {v0}, Lkotlin/UShortArray;->iterator-impl([S)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 11599
    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/g;->b:[S

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([S)Lkotlin/collections/ShortIterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
