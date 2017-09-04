.class final Lcn/domob/wall/core/bean/AdInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/bean/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/domob/wall/core/bean/AdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/domob/wall/core/bean/AdInfo;
    .registers 6

    .prologue
    .line 567
    new-instance v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-direct {v0}, Lcn/domob/wall/core/bean/AdInfo;-><init>()V

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->a(Lcn/domob/wall/core/bean/AdInfo;I)I

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->b(Lcn/domob/wall/core/bean/AdInfo;I)I

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->c(Lcn/domob/wall/core/bean/AdInfo;I)I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->d(Lcn/domob/wall/core/bean/AdInfo;I)I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->e(Lcn/domob/wall/core/bean/AdInfo;I)I

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->f(Lcn/domob/wall/core/bean/AdInfo;I)I

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->a(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->b(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->c(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->d(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->e(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->f(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->g(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->h(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->i(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->j(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->k(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->l(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->m(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->n(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->o(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->p(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->q(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/domob/wall/core/bean/AdInfo;->a(Lcn/domob/wall/core/bean/AdInfo;J)J

    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->a(Lcn/domob/wall/core/bean/AdInfo;Ljava/util/List;)Ljava/util/List;

    .line 602
    return-object v0
.end method

.method public a(I)[Lcn/domob/wall/core/bean/AdInfo;
    .registers 3

    .prologue
    .line 607
    new-array v0, p1, [Lcn/domob/wall/core/bean/AdInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/bean/AdInfo$1;->a(Landroid/os/Parcel;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/bean/AdInfo$1;->a(I)[Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    return-object v0
.end method
