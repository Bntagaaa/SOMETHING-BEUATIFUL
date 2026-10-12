.class public final Lcom/google/appinventor/components/runtime/Placeholder;
.super Lcom/google/appinventor/components/runtime/HVArrangement;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "This component is a replacement component for unsupported components imported from other builders, users should fix the layout according to the desired ui"
    iconName = "images/placeholderComponent.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const/4 v0, 0x0

    .line 29
    sget-boolean v1, Lcom/google/appinventor/components/common/ComponentConstants;->NONSCROLLABLE_ARRANGEMENT:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/HVArrangement;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V

    return-void
.end method
