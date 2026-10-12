.class public final Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final e:J

.field public static final f:J


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/Long;

.field public d:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    .line 204
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/t;->a(II)Lcom/google/android/material/datepicker/t;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/t;->f:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->e:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    .line 210
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/t;->a(II)Lcom/google/android/material/datepicker/t;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/t;->f:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->a:J

    .line 215
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->f:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->b:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 217
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->d:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->d:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-wide v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->a:J

    .line 325
    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/t;->b(J)Lcom/google/android/material/datepicker/t;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->b:J

    .line 326
    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/t;->b(J)Lcom/google/android/material/datepicker/t;

    move-result-object v4

    .line 327
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 328
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->c:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/t;->b(J)Lcom/google/android/material/datepicker/t;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v3, v4, v0, v2}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/t;Lcom/google/android/material/datepicker/t;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/t;)V

    return-object v1
.end method

.method public setEnd(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 278
    iput-wide p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->b:J

    return-object p0
.end method

.method public setOpenAt(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 305
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public setStart(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 251
    iput-wide p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->a:J

    return-object p0
.end method

.method public setValidator(Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .param p1    # Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->d:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-object p0
.end method
