.class Lcom/google/android/material/internal/NavigationMenuPresenter$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/NavigationMenuPresenter$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public b:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->a:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->a:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method
