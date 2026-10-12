.class public final Lcom/google/appinventor/components/runtime/util/BoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bottom:D

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    .line 29
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    .line 30
    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    .line 31
    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    return-void
.end method


# virtual methods
.method public getBottom()D
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    return-wide v0
.end method

.method public getRight()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    return-wide v0
.end method

.method public intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10

    .line 45
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    iget-wide v4, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 47
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    iget-wide v6, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 48
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    iget-wide v8, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    cmpl-double p1, v4, v6

    if-lez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    .line 57
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    .line 58
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    .line 59
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 101
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<BoundingBox (left = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", top = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", right = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", bottom = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
