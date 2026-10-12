.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;-><init>(IILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 49
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 50
    const-string v3, "Text1"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0

    .line 45
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 46
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->g(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Ljava/util/List;)V

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
