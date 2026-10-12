.class Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;
.super Lcom/ramotion/circlemenu/CircleMenuView$EventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->CreateMenu(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCircularMenu;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-direct {p0}, Lcom/ramotion/circlemenu/CircleMenuView$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClickAnimationEnd(Lcom/ramotion/circlemenu/CircleMenuView;I)V
    .locals 0
    .param p1    # Lcom/ramotion/circlemenu/CircleMenuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->ButtonClickAnimationEnd(I)V

    return-void
.end method

.method public onButtonClickAnimationStart(Lcom/ramotion/circlemenu/CircleMenuView;I)V
    .locals 0
    .param p1    # Lcom/ramotion/circlemenu/CircleMenuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->ButtonClickAnimationStart(I)V

    return-void
.end method

.method public onMenuCloseAnimationEnd(Lcom/ramotion/circlemenu/CircleMenuView;)V
    .locals 0
    .param p1    # Lcom/ramotion/circlemenu/CircleMenuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->MenuCloseAnimationEnd()V

    return-void
.end method

.method public onMenuCloseAnimationStart(Lcom/ramotion/circlemenu/CircleMenuView;)V
    .locals 0
    .param p1    # Lcom/ramotion/circlemenu/CircleMenuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->MenuCloseAnimationStart()V

    return-void
.end method

.method public onMenuOpenAnimationEnd(Lcom/ramotion/circlemenu/CircleMenuView;)V
    .locals 0
    .param p1    # Lcom/ramotion/circlemenu/CircleMenuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->MenuOpenAnimationEnd()V

    return-void
.end method

.method public onMenuOpenAnimationStart(Lcom/ramotion/circlemenu/CircleMenuView;)V
    .locals 0
    .param p1    # Lcom/ramotion/circlemenu/CircleMenuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCircularMenu;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->MenuOpenAnimationStart()V

    return-void
.end method
