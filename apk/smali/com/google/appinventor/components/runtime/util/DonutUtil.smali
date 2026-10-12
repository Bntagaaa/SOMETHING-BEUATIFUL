.class public Lcom/google/appinventor/components/runtime/util/DonutUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDrawingCache(Landroid/view/View;Z)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    return-void
.end method

.method public static getDrawingCache(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
