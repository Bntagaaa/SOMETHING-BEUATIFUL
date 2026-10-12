.class Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->AddListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemReselected(Landroid/view/MenuItem;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->OnItemReSelected(Ljava/lang/String;)V

    return-void
.end method
