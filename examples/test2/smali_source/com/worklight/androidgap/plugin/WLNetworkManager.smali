.class public Lcom/worklight/androidgap/plugin/WLNetworkManager;
.super Lorg/apache/cordova/NetworkManager;
.source "WLNetworkManager.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLNetworkManager;

    const v1, 0x476

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/cordova/NetworkManager;-><init>()V

    return-void
.end method


# virtual methods
.method public native isSynch(Ljava/lang/String;)Z
.end method
