.class public final synthetic Landroidx/emoji2/text/flatbuffer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->b:Ljava/lang/ThreadLocal;

    .line 46
    new-instance v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;-><init>()V

    return-object v0
.end method
