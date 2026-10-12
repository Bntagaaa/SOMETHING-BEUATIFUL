.class public abstract Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1, p3}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->b:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->a:I

    .line 56
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 100
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->b:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->a:I

    .line 101
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 83
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->b:I

    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->a:I

    .line 84
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 117
    iget p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->b:I

    const/4 p2, 0x0

    iget-object v0, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 112
    iget p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->a:I

    const/4 p2, 0x0

    iget-object v0, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .line 135
    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->b:I

    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    .line 126
    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->a:I

    return-void
.end method
