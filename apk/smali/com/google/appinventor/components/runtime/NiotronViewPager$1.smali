.class Lcom/google/appinventor/components/runtime/NiotronViewPager$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronViewPager;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronViewPager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronViewPager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronViewPager;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronViewPager;->ScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronViewPager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronViewPager;->PageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewPager$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronViewPager;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronViewPager;->PageSelected(I)V

    return-void
.end method
