.class public Lme/aemo/floatingview/FloatingView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# static fields
.field public static r:Z = false


# instance fields
.field public final a:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public final b:Landroid/app/Activity;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public j:Landroid/view/WindowManager;

.field public k:Landroid/view/WindowManager$LayoutParams;

.field public l:Landroid/widget/RelativeLayout;

.field public m:Landroid/view/ViewGroup;

.field public n:I

.field public o:Landroid/view/View;

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->c:Z

    .line 37
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->d:Z

    .line 50
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->p:Z

    .line 51
    iput v0, p0, Lme/aemo/floatingview/FloatingView;->q:I

    .line 55
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method


# virtual methods
.method public ChangeHeight(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change floating window height."
    .end annotation

    .line 181
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lme/aemo/floatingview/FloatingView$c;

    invoke-direct {v0, p0, p1}, Lme/aemo/floatingview/FloatingView$c;-><init>(Lme/aemo/floatingview/FloatingView;F)V

    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ChangeWidth(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change floating window width."
    .end annotation

    .line 162
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lme/aemo/floatingview/FloatingView$b;

    invoke-direct {v0, p0, p1}, Lme/aemo/floatingview/FloatingView$b;-><init>(Lme/aemo/floatingview/FloatingView;F)V

    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public CheckDrawOverlayPermission()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the overlay permission is active."
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lme/aemo/floatingview/FloatingView;->a(Z)Z

    move-result v0

    return v0
.end method

.method public ClickView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Executes after clicking on the floating component."
    .end annotation

    const/4 v0, 0x0

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ClickView"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DisableScreenRecordingProtection()V
    .locals 3

    .line 307
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 309
    iget-object v2, p0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->p:Z

    :cond_0
    return-void
.end method

.method public DismissViewFloating()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the floating component."
    .end annotation

    .line 287
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 288
    sput-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    .line 289
    new-instance v0, Lme/aemo/floatingview/b;

    invoke-direct {v0, p0}, Lme/aemo/floatingview/b;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public GetClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks whether the floating view is clickable."
    .end annotation

    .line 122
    iget-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->d:Z

    return v0
.end method

.method public GetFloatingViewVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks if the floating is present on the screen."
    .end annotation

    .line 127
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    return v0
.end method

.method public GetPositionX()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the X coordinate that the floating view is in."
    .end annotation

    .line 97
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public GetPositionY()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the Y coordinate that the floating view is in."
    .end annotation

    .line 102
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public LoseFocusFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loses focus on the floating window."
    .end annotation

    .line 215
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lme/aemo/floatingview/FloatingView$e;

    invoke-direct {v0, p0}, Lme/aemo/floatingview/FloatingView$e;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public OverlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Through this block it is possible to overlap any visible component on another.\nmargins (list):\n\tindex 1 -> margin left (number)\n\tindex 2 -> margin top (number)\n\tindex 3 -> margin right(number)\n\tindex 4 -> margin bottom (number)\ngravity (number):\n\t0  -> TOP-LEFT\n\t1  -> TOP-CENTER\n\t2  -> TOP-RIGHT\n\t3  -> CENTER-LEFT\n\t4  -> CENTER\n\t5  -> CENTER-RIGHT\n\t6  -> BOTTOM-LEFT\n\t7  -> BOTTOM-CENTER\n\t8  -> BOTTOM-RIGHT\n"
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p4, :cond_0

    const/16 p4, 0x33

    goto :goto_0

    :cond_0
    if-ne p4, v2, :cond_1

    const/16 p4, 0x31

    goto :goto_0

    :cond_1
    if-ne p4, v1, :cond_2

    const/16 p4, 0x35

    goto :goto_0

    :cond_2
    if-ne p4, v0, :cond_3

    const/16 p4, 0x13

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p4, v3, :cond_4

    const/16 p4, 0x11

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne p4, v3, :cond_5

    const/16 p4, 0x15

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    if-ne p4, v3, :cond_6

    const/16 p4, 0x53

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    if-ne p4, v3, :cond_7

    const/16 p4, 0x51

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    if-ne p4, v3, :cond_8

    const/16 p4, 0x55

    .line 412
    :cond_8
    :goto_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    .line 413
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 414
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    :cond_9
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lme/aemo/floatingview/FloatingView;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 416
    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {p2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 419
    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 420
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 421
    array-length p4, p3

    const/4 v4, 0x0

    if-lez p4, :cond_a

    aget-object p4, p3, v4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_1

    :cond_a
    const/4 p4, 0x0

    :goto_1
    array-length v5, p3

    if-le v5, v2, :cond_b

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    array-length v5, p3

    if-le v5, v1, :cond_c

    aget-object v1, p3, v1

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    array-length v5, p3

    if-le v5, v0, :cond_d

    aget-object p3, p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 421
    :cond_d
    invoke-virtual {p2, p4, v2, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 423
    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public PositionMoved(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "View moved from position"
    .end annotation

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "PositionMoved"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestDrawOverlayPermission()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Redirects to application settings to allow overlay permission."
    .end annotation

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lme/aemo/floatingview/FloatingView;->a(Z)Z

    return-void
.end method

.method public RequestFocusFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompts to focus on the floating window."
    .end annotation

    .line 201
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lme/aemo/floatingview/FloatingView$d;

    invoke-direct {v0, p0}, Lme/aemo/floatingview/FloatingView$d;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public RestoreFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the floating window to the screen."
    .end annotation

    .line 142
    new-instance v0, Lme/aemo/floatingview/FloatingView$a;

    invoke-direct {v0, p0}, Lme/aemo/floatingview/FloatingView$a;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ScreenRecording(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-eqz p1, :cond_1

    .line 300
    sget-boolean p1, Lme/aemo/floatingview/FloatingView;->r:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 302
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lme/aemo/floatingview/FloatingView;->p:Z

    :cond_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lme/aemo/floatingview/FloatingView;->DisableScreenRecordingProtection()V

    return-void
.end method

.method public SetClickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Adjusts whether the floating view is clickable"
    .end annotation

    .line 117
    iput-boolean p1, p0, Lme/aemo/floatingview/FloatingView;->d:Z

    return-void
.end method

.method public SetPosition(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the floating view to the indicated coordinates."
    .end annotation

    .line 107
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 108
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lme/aemo/floatingview/FloatingView;->PositionMoved(II)V

    .line 111
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public SetupView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ZII)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the component you want to float."
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    .line 63
    iput-boolean p2, p0, Lme/aemo/floatingview/FloatingView;->d:Z

    .line 287
    sget-boolean p1, Lme/aemo/floatingview/FloatingView;->r:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 288
    sput-boolean p2, Lme/aemo/floatingview/FloatingView;->r:Z

    .line 289
    new-instance p1, Lme/aemo/floatingview/b;

    invoke-direct {p1, p0}, Lme/aemo/floatingview/b;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    .line 316
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    const/16 p1, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_0

    :cond_1
    const/16 p1, 0x7d2

    const/16 v4, 0x7d2

    :goto_0
    const v5, 0x40008

    const/4 v6, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lme/aemo/floatingview/FloatingView;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x33

    .line 323
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 324
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 325
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 328
    iget-boolean p1, p0, Lme/aemo/floatingview/FloatingView;->p:Z

    if-eqz p1, :cond_2

    .line 329
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 332
    :cond_2
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 333
    :cond_3
    new-instance p2, Lme/aemo/floatingview/c;

    invoke-direct {p2, p0}, Lme/aemo/floatingview/c;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    new-instance p2, Lme/aemo/floatingview/d;

    invoke-direct {p2, p0}, Lme/aemo/floatingview/d;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 385
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->m:Landroid/view/ViewGroup;

    .line 386
    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lme/aemo/floatingview/FloatingView;->n:I

    .line 387
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 389
    :cond_4
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->o:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public ShowFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays the floating component."
    .end annotation

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lme/aemo/floatingview/FloatingView;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    sget-boolean v1, Lme/aemo/floatingview/FloatingView;->r:Z

    if-nez v1, :cond_0

    .line 265
    sput-boolean v0, Lme/aemo/floatingview/FloatingView;->r:Z

    .line 266
    new-instance v0, Lme/aemo/floatingview/a;

    invoke-direct {v0, p0}, Lme/aemo/floatingview/a;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Z)Z
    .locals 3

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroidx/vectordrawable/graphics/drawable/c;->s(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 251
    new-instance p1, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    iget v1, p0, Lme/aemo/floatingview/FloatingView;->q:I

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lme/aemo/floatingview/FloatingView;->q:I

    .line 255
    :cond_0
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 429
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->j:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->l:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 240
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 241
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->a:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/vectordrawable/graphics/drawable/c;->s(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    sget-boolean p1, Lme/aemo/floatingview/FloatingView;->r:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 265
    sput-boolean p1, Lme/aemo/floatingview/FloatingView;->r:Z

    .line 266
    new-instance p1, Lme/aemo/floatingview/a;

    invoke-direct {p1, p0}, Lme/aemo/floatingview/a;-><init>(Lme/aemo/floatingview/FloatingView;)V

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->b:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
