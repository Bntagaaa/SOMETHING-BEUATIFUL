.class Landroidx/appcompat/widget/SearchView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1019
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1030
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    const/16 v4, 0x42

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    .line 1031
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 1060
    iget-object p1, v0, Landroidx/appcompat/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 1063
    :cond_1
    iget-object p1, v0, Landroidx/appcompat/widget/SearchView;->R:Landroidx/cursoradapter/widget/CursorAdapter;

    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 1066
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eq p2, v4, :cond_7

    const/16 p1, 0x54

    if-eq p2, p1, :cond_7

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0x15

    if-eq p2, p1, :cond_5

    const/16 p3, 0x16

    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x13

    if-ne p2, p1, :cond_a

    .line 1093
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    return v2

    :cond_5
    :goto_0
    if-ne p2, p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    .line 1083
    :cond_6
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result p1

    .line 1084
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1085
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 1086
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 1087
    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V

    return v5

    .line 1071
    :cond_7
    :goto_2
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    .line 1072
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->g(I)Z

    move-result p1

    return p1

    .line 1893
    :cond_8
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1893
    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 1037
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1038
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v5, :cond_a

    if-ne p2, v4, :cond_a

    .line 1040
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1043
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 1044
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1534
    const-string p3, "android.intent.action.SEARCH"

    invoke-virtual {v0, p3, p2, p2, p1}, Landroidx/appcompat/widget/SearchView;->c(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1535
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_a
    :goto_3
    return v2
.end method
