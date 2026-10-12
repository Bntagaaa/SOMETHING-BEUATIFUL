.class public Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;,
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAdapterRecyclerView"


# instance fields
.field private backgroundColor:I

.field private clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field protected final filter:Landroid/widget/Filter;

.field private filterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private idCard:I

.field private idFirst:I

.field private idImages:I

.field private idSecond:I

.field private imageHeight:I

.field private imageWidth:I

.field public isSelected:Z

.field public isVisible:[Ljava/lang/Boolean;

.field private itemViews:[Landroidx/cardview/widget/CardView;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private layoutType:I

.field private multiSelect:Z

.field public selection:[Ljava/lang/Boolean;

.field private selectionColor:I

.field private textDetailColor:I

.field private textDetailFont:Ljava/lang/String;

.field private textDetailSize:F

.field private textMainColor:I

.field private textMainFont:Ljava/lang/String;

.field private textMainSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IF",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 118
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 119
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    const/4 v1, 0x1

    .line 120
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 149
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 150
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 151
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 154
    const-string p1, "0"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:Ljava/lang/String;

    .line 155
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 156
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 157
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 158
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 159
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 160
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 161
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 163
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 165
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 171
    new-instance p3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 172
    const-string p4, "Text1"

    invoke-virtual {p3, p4, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFLjava/lang/String;Ljava/lang/String;IIIIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;IIFF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIZ)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 118
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 119
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 124
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 126
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 127
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 128
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 129
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 130
    iput-object p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:Ljava/lang/String;

    .line 131
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:Ljava/lang/String;

    .line 132
    iput p9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 133
    iput p10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 134
    iput p11, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 135
    iput p13, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 136
    iput p12, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 137
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 138
    iput-boolean p14, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 140
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 141
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 143
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public changeSelections(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public clearSelections()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 180
    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v0, v0

    return v0
.end method

.method public getSelectedItems()Ljava/lang/String;
    .locals 5

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 420
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, "Text1"

    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, ","

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 9

    .line 305
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 313
    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    const-string v2, "Text2"

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 315
    :cond_0
    const-string v2, ""

    .line 318
    :goto_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-nez v3, :cond_1

    .line 319
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 321
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 324
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3
    const/4 v4, 0x3

    .line 326
    const-string v5, ": "

    const-string v6, "onBindViewHolder Unable to load image "

    const-string v7, "Image"

    const-string v8, "ListAdapterRecyclerView"

    if-ne v3, v4, :cond_4

    .line 327
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 332
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_1
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 337
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 340
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .line 342
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_2
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 348
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindViewHolder Layout not recognized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 353
    :cond_6
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 355
    :goto_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 357
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 360
    :cond_7
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 363
    :goto_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    aput-object p1, v0, p2

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 12

    .line 218
    new-instance p1, Landroidx/cardview/widget/CardView;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 219
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    const/16 v0, 0xa

    .line 220
    invoke-virtual {p1, v0, v0, v0, v0}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 221
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    const v1, 0x40066666    # 2.1f

    .line 222
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 224
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 225
    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 227
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 228
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 230
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    .line 231
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 233
    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 236
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v6

    iput v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 238
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 239
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:Ljava/lang/String;

    invoke-static {v6, v5, v7, v4, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 245
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v8, :cond_0

    if-ne v2, v7, :cond_1

    .line 252
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v9}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v9

    iput v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 254
    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    .line 255
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    iget v11, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 256
    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    :cond_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-eqz v2, :cond_5

    if-ne v2, v7, :cond_2

    goto/16 :goto_1

    .line 265
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v7

    iput v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 267
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 268
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v9}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v9

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:Ljava/lang/String;

    invoke-static {v9, v2, v10, v4, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 271
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget v9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-eq v9, p2, :cond_4

    if-ne v9, v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v9, v3, :cond_6

    const/16 v3, 0x32

    .line 287
    invoke-virtual {v7, v3, v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 288
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p2, 0x0

    .line 290
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 292
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 273
    :cond_4
    :goto_0
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 274
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 278
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 262
    :cond_5
    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    :cond_6
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    new-instance p2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-void
.end method

.method public toggleSelection(I)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 190
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 191
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, p1

    .line 196
    aget-object p1, v1, p1

    if-eqz p1, :cond_2

    .line 197
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method
