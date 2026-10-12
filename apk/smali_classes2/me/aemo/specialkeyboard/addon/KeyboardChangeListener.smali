.class public Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;
    }
.end annotation


# static fields
.field public static final MIN_KEYBOARD_HEIGHT:I = 0x12c


# instance fields
.field public a:Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;

.field public b:Z

.field public final c:Landroid/view/Window;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->b:Z

    if-nez p1, :cond_0

    .line 45
    const-string p1, "KeyboardChangeListener"

    const-string v0, "contextObj is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    const v1, 0x1020002

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Landroid/app/Activity;

    .line 62
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->d:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->c:Landroid/view/Window;

    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 52
    check-cast p1, Landroid/app/Dialog;

    .line 66
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->d:Landroid/view/View;

    .line 53
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->c:Landroid/view/Window;

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->c:Landroid/view/Window;

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void
.end method

.method public static create(Landroid/app/Activity;)Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;
    .locals 1

    .line 36
    new-instance v0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;

    invoke-direct {v0, p0}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;)Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;
    .locals 1

    .line 40
    new-instance v0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;

    invoke-direct {v0, p0}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 76
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->c:Landroid/view/Window;

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 80
    const-string v2, "KeyboardChangeListener"

    if-nez v0, :cond_1

    .line 81
    const-string v0, "currHeight is 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 108
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 110
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 114
    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 88
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 90
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v1

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onGlobalLayout() called  screenHeight "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " VisibleDisplayHeight "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->a:Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;

    if-eqz v0, :cond_3

    const/16 v1, 0x12c

    if-le v3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 98
    :goto_0
    iget-boolean v2, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->b:Z

    if-eq v2, v1, :cond_3

    .line 99
    iput-boolean v1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->b:Z

    .line 100
    invoke-interface {v0, v1, v3}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;->onKeyboardChange(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setKeyboardListener(Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->a:Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;

    return-void
.end method
