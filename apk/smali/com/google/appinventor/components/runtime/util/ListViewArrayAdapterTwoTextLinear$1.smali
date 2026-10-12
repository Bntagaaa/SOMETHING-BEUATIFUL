.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;-><init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 55
    const-string v3, "Text1"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Text2"

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1

    .line 50
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 51
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->i(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Ljava/util/List;)V

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    check-cast p2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
