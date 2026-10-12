.class Lme/aemo/specialkeyboard/SpecialKeyboard$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/specialkeyboard/SpecialKeyboard;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lme/aemo/specialkeyboard/SpecialKeyboard;


# direct methods
.method public constructor <init>(Lme/aemo/specialkeyboard/SpecialKeyboard;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/aemo/specialkeyboard/SpecialKeyboard$a;->a:Lme/aemo/specialkeyboard/SpecialKeyboard;

    return-void
.end method


# virtual methods
.method public onKeyboardChange(ZI)V
    .locals 1

    .line 29
    iget-object v0, p0, Lme/aemo/specialkeyboard/SpecialKeyboard$a;->a:Lme/aemo/specialkeyboard/SpecialKeyboard;

    invoke-virtual {v0, p1, p2}, Lme/aemo/specialkeyboard/SpecialKeyboard;->OnKeyboardChange(ZI)V

    return-void
.end method
