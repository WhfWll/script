.class final Lcom/worklight/androidgap/push/WLGCMIntentService$Message$1;
.super Ljava/lang/Object;
.source "WLGCMIntentService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
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
        "Lcom/worklight/androidgap/push/WLGCMIntentService$Message;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message$1;

    const v1, 0x49e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native createFromParcel(Landroid/os/Parcel;)Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message$1;->createFromParcel(Landroid/os/Parcel;)Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    move-result-object v0

    return-object v0
.end method

.method public native newArray(I)[Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message$1;->newArray(I)[Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    move-result-object v0

    return-object v0
.end method
