.class Lcom/google/appinventor/components/runtime/NiotronTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronTabLayout;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronTabLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronTabLayout;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->ReSelected(I)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTabLayout$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronTabLayout;->Selected(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
