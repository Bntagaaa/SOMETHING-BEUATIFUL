.class public final synthetic Lkotlin/collections/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(I[I)V
    .locals 0

    iput p1, p0, Lkotlin/collections/e;->a:I

    iput-object p2, p0, Lkotlin/collections/e;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/collections/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 5217
    iget-object v0, p0, Lkotlin/collections/e;->b:[I

    invoke-static {v0}, Lkotlin/UIntArray;->iterator-impl([I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 11607
    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/e;->b:[I

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([I)Lkotlin/collections/IntIterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
