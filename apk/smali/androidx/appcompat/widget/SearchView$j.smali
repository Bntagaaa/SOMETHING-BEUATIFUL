.class Landroidx/appcompat/widget/SearchView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$j;->a:Landroidx/appcompat/widget/SearchView;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1416
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$j;->a:Landroidx/appcompat/widget/SearchView;

    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->N:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    if-eqz p2, :cond_1

    .line 1417
    invoke-interface {p2, p3}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1461
    :cond_1
    :goto_0
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 1462
    iget-object p4, p1, Landroidx/appcompat/widget/SearchView;->R:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {p4}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p4

    if-nez p4, :cond_2

    goto :goto_1

    .line 1466
    :cond_2
    invoke-interface {p4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1468
    iget-object p3, p1, Landroidx/appcompat/widget/SearchView;->R:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 1472
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView;->i(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1475
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->i(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1479
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->i(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
