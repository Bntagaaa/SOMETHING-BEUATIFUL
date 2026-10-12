.class public final synthetic Lkotlin/collections/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[J


# direct methods
.method public synthetic constructor <init>([JI)V
    .locals 0

    iput p2, p0, Lkotlin/collections/h;->a:I

    iput-object p1, p0, Lkotlin/collections/h;->b:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/collections/h;->a:I

    packed-switch v0, :pswitch_data_0

    .line 5227
    iget-object v0, p0, Lkotlin/collections/h;->b:[J

    invoke-static {v0}, Lkotlin/ULongArray;->iterator-impl([J)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 11615
    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/h;->b:[J

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([J)Lkotlin/collections/LongIterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
