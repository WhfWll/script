.class final Lcn/dbox/core/bean/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/bean/a;
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
        "Lcn/dbox/core/bean/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/dbox/core/bean/a;
    .registers 4

    .prologue
    .line 252
    new-instance v0, Lcn/dbox/core/bean/a;

    invoke-direct {v0}, Lcn/dbox/core/bean/a;-><init>()V

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->a(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->c(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->d(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->e(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->f(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->g(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->h(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->i(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/bean/a;->a(Lcn/dbox/core/bean/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 265
    return-object v0
.end method

.method public a(I)[Lcn/dbox/core/bean/a;
    .registers 3

    .prologue
    .line 270
    new-array v0, p1, [Lcn/dbox/core/bean/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcn/dbox/core/bean/a$1;->a(Landroid/os/Parcel;)Lcn/dbox/core/bean/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcn/dbox/core/bean/a$1;->a(I)[Lcn/dbox/core/bean/a;

    move-result-object v0

    return-object v0
.end method
