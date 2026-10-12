.class Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$a;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$a;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iget-object v0, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->e:Landroidx/appcompat/widget/ListPopupWindow;

    if-gez p3, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 121
    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    if-gez p3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    goto :goto_3

    .line 126
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p2

    .line 127
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p3

    .line 128
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p4

    goto :goto_1

    .line 131
    :goto_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 130
    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 134
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
