.class public final Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearTransformationBuilder"
.end annotation


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->a:D

    .line 65
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->b:D

    return-void
.end method


# virtual methods
.method public and(DD)Lcom/google/common/math/LinearTransformation;
    .locals 7

    .line 75
    invoke-static {p1, p2}, Lcom/google/common/math/a;->c(D)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lcom/google/common/math/a;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->b:D

    iget-wide v5, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->a:D

    cmpl-double v0, p1, v5

    if-nez v0, :cond_2

    cmpl-double p1, p3, v3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 77
    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    new-instance p1, Lcom/google/common/math/LinearTransformation$d;

    invoke-direct {p1, v5, v6}, Lcom/google/common/math/LinearTransformation$d;-><init>(D)V

    return-object p1

    :cond_2
    sub-double/2addr p3, v3

    sub-double/2addr p1, v5

    div-double/2addr p3, p1

    .line 80
    invoke-virtual {p0, p3, p4}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p1

    return-object p1
.end method

.method public withSlope(D)Lcom/google/common/math/LinearTransformation;
    .locals 5

    .line 90
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    invoke-static {p1, p2}, Lcom/google/common/math/a;->c(D)Z

    move-result v0

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->a:D

    if-eqz v0, :cond_0

    .line 92
    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->b:D

    mul-double v1, v1, p1

    sub-double/2addr v3, v1

    .line 93
    new-instance v0, Lcom/google/common/math/LinearTransformation$c;

    invoke-direct {v0, p1, p2, v3, v4}, Lcom/google/common/math/LinearTransformation$c;-><init>(DD)V

    return-object v0

    .line 95
    :cond_0
    new-instance p1, Lcom/google/common/math/LinearTransformation$d;

    invoke-direct {p1, v1, v2}, Lcom/google/common/math/LinearTransformation$d;-><init>(D)V

    return-object p1
.end method
