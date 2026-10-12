.class public final Lcom/google/android/material/resources/CancelableFontCallback;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->a:Landroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->b:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->c:Z

    return-void
.end method

.method public onFontRetrievalFailed(I)V
    .locals 1

    .line 68
    iget-boolean p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->c:Z

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->b:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    iget-object v0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->a:Landroid/graphics/Typeface;

    invoke-interface {p1, v0}, Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;->apply(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 68
    iget-boolean p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->c:Z

    if-nez p2, :cond_0

    .line 69
    iget-object p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->b:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    invoke-interface {p2, p1}, Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;->apply(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
