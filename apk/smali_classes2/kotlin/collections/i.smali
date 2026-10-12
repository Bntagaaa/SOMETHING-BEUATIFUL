.class public final synthetic Lkotlin/collections/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>([BI)V
    .locals 0

    iput p2, p0, Lkotlin/collections/i;->a:I

    iput-object p1, p0, Lkotlin/collections/i;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/collections/i;->a:I

    packed-switch v0, :pswitch_data_0

    .line 5237
    iget-object v0, p0, Lkotlin/collections/i;->b:[B

    invoke-static {v0}, Lkotlin/UByteArray;->iterator-impl([B)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 11591
    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/i;->b:[B

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([B)Lkotlin/collections/ByteIterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
