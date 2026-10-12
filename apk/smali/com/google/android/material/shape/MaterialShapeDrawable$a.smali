.class final Lcom/google/android/material/shape/MaterialShapeDrawable$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/graphics/PorterDuff$Mode;

.field public h:Landroid/graphics/Rect;

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable$a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/MaterialShapeDrawable$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1440
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1409
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    .line 1410
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    .line 1411
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    .line 1412
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    .line 1413
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1414
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1416
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    .line 1417
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    const/16 v0, 0xff

    .line 1420
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    const/4 v0, 0x0

    .line 1421
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    .line 1422
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    .line 1423
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    const/4 v0, 0x0

    .line 1424
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    .line 1425
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    .line 1426
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    .line 1427
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    .line 1429
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    .line 1431
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    .line 1441
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1442
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 1443
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->k:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->k:F

    .line 1445
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    .line 1446
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    .line 1447
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1448
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    .line 1449
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    .line 1450
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    .line 1451
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    .line 1452
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    .line 1453
    iget-boolean v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    .line 1454
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    .line 1455
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    .line 1456
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    .line 1457
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    .line 1458
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    .line 1459
    iget v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    .line 1460
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    .line 1461
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    .line 1462
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1463
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/elevation/ElevationOverlayProvider;)V
    .locals 2

    .line 1435
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1409
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->c:Landroid/content/res/ColorStateList;

    .line 1410
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->d:Landroid/content/res/ColorStateList;

    .line 1411
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->e:Landroid/content/res/ColorStateList;

    .line 1412
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->f:Landroid/content/res/ColorStateList;

    .line 1413
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1414
    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->h:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1416
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->i:F

    .line 1417
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->j:F

    const/16 v0, 0xff

    .line 1420
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->l:I

    const/4 v0, 0x0

    .line 1421
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->m:F

    .line 1422
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->n:F

    .line 1423
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->o:F

    const/4 v0, 0x0

    .line 1424
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->p:I

    .line 1425
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->q:I

    .line 1426
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->r:I

    .line 1427
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->s:I

    .line 1429
    iput-boolean v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->t:Z

    .line 1431
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->u:Landroid/graphics/Paint$Style;

    .line 1436
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1437
    iput-object p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$a;->b:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1470
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 75
    invoke-direct {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$a;)V

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->e:Z

    return-object v0
.end method
