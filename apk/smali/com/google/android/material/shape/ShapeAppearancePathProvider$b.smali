.class final Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field public final e:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 350
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 351
    iput p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->e:F

    .line 352
    iput-object p3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->c:Landroid/graphics/RectF;

    .line 353
    iput-object p5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->b:Landroid/graphics/Path;

    return-void
.end method
