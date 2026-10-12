.class Lcom/google/android/material/resources/TextAppearance$b;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field public final synthetic d:Lcom/google/android/material/resources/TextAppearance;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance$b;->d:Lcom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lcom/google/android/material/resources/TextAppearance$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/material/resources/TextAppearance$b;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Lcom/google/android/material/resources/TextAppearance$b;->c:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$b;->c:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 3
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance$b;->b:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance$b;->d:Lcom/google/android/material/resources/TextAppearance;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$b;->c:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
