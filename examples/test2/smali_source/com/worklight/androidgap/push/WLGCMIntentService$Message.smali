.class public Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
.super Ljava/lang/Object;
.source "WLGCMIntentService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/push/WLGCMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/worklight/androidgap/push/WLGCMIntentService$Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alert:Ljava/lang/String;

.field private badge:I

.field private payload:Ljava/lang/String;

.field private sound:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    const v1, 0x49f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message$1;

    invoke-direct {v0}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message$1;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object v1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->alert:Ljava/lang/String;

    .line 222
    const/4 v0, 0x1

    iput v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->badge:I

    .line 223
    iput-object v1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->sound:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->payload:Ljava/lang/String;

    .line 225
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->alert:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->badge:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->sound:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->payload:Ljava/lang/String;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/worklight/androidgap/push/WLGCMIntentService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/worklight/androidgap/push/WLGCMIntentService$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->alert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->alert:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)I
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    .prologue
    .line 214
    iget v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->badge:I

    return v0
.end method

.method static synthetic access$102(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;I)I
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    .param p1, "x1"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->badge:I

    return p1
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->sound:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->sound:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->payload:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public native describeContents()I
.end method

.method public native getPayload()Lorg/json/JSONObject;
.end method

.method public native getProps()Lorg/json/JSONObject;
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
