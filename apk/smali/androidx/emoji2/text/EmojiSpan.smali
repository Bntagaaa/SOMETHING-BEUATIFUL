.class public abstract Landroidx/emoji2/text/EmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint$FontMetricsInt;

.field public final b:Landroidx/emoji2/text/EmojiMetadata;

.field public c:S

.field public d:S

.field public e:F


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiMetadata;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->a:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, -0x1

    .line 55
    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->c:S

    .line 60
    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->d:S

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    iput v0, p0, Landroidx/emoji2/text/EmojiSpan;->e:F

    .line 76
    const-string v0, "metadata cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->b:Landroidx/emoji2/text/EmojiMetadata;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 130
    iget-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->d:S

    return v0
.end method

.method public final getId()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiSpan;->getMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    move-result v0

    return v0
.end method

.method public final getMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->b:Landroidx/emoji2/text/EmojiMetadata;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->a:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 88
    iget p1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p1, p1, p3

    .line 90
    iget-object p3, p0, Landroidx/emoji2/text/EmojiSpan;->b:Landroidx/emoji2/text/EmojiMetadata;

    invoke-virtual {p3}, Landroidx/emoji2/text/EmojiMetadata;->getHeight()S

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    iput p1, p0, Landroidx/emoji2/text/EmojiSpan;->e:F

    .line 91
    invoke-virtual {p3}, Landroidx/emoji2/text/EmojiMetadata;->getHeight()S

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Landroidx/emoji2/text/EmojiSpan;->e:F

    mul-float p1, p1, p4

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->d:S

    .line 92
    invoke-virtual {p3}, Landroidx/emoji2/text/EmojiMetadata;->getWidth()S

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Landroidx/emoji2/text/EmojiSpan;->e:F

    mul-float p1, p1, p3

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->c:S

    if-eqz p5, :cond_0

    .line 95
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 96
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 97
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 98
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    return p1
.end method
