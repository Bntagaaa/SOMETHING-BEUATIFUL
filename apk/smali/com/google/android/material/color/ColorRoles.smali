.class public final Lcom/google/android/material/color/ColorRoles;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/material/color/ColorRoles;->a:I

    .line 39
    iput p2, p0, Lcom/google/android/material/color/ColorRoles;->b:I

    .line 40
    iput p3, p0, Lcom/google/android/material/color/ColorRoles;->c:I

    .line 41
    iput p4, p0, Lcom/google/android/material/color/ColorRoles;->d:I

    return-void
.end method


# virtual methods
.method public getAccent()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 47
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->a:I

    return v0
.end method

.method public getAccentContainer()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 62
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->c:I

    return v0
.end method

.method public getOnAccent()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 56
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->b:I

    return v0
.end method

.method public getOnAccentContainer()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 71
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->d:I

    return v0
.end method
