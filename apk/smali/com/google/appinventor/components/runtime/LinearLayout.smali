.class public final Lcom/google/appinventor/components/runtime/LinearLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private fullclickable:Z

.field private final layoutManager:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->fullclickable:Z

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    :goto_0
    new-instance v1, Lcom/google/appinventor/components/runtime/LinearLayout$1;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/google/appinventor/components/runtime/LinearLayout$1;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 103
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/LinearLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->fullclickable:Z

    return p0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setBaselineAligned(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    return-void
.end method

.method public setFullClickable(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->fullclickable:Z

    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    return-void
.end method
