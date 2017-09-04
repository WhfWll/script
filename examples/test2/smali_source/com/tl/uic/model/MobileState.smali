.class public Lcom/tl/uic/model/MobileState;
.super Ljava/lang/Object;
.source "MobileState.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1cfd273b6d70777eL


# instance fields
.field private androidState:Lcom/tl/uic/model/AndroidState;

.field private battery:D

.field private carrier:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private freeMemory:J

.field private freeStorage:J

.field private ip:Ljava/lang/String;

.field private networkReachability:Lcom/tl/uic/model/ReachabilityType;

.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/MobileState;

    const v1, 0x416

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getAndroidState()Lcom/tl/uic/model/AndroidState;
.end method

.method public final native getBattery()D
.end method

.method public final native getCarrier()Ljava/lang/String;
.end method

.method public final native getConnectionType()Ljava/lang/String;
.end method

.method public final native getFreeMemory()J
.end method

.method public final native getFreeStorage()J
.end method

.method public final native getIp()Ljava/lang/String;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;
.end method

.method public final native getOrientation()I
.end method

.method public final native hashCode()I
.end method

.method public final native setAndroidState(Lcom/tl/uic/model/AndroidState;)V
.end method

.method public final native setBattery(D)V
.end method

.method public final native setCarrier(Ljava/lang/String;)V
.end method

.method public final native setConnectionType(Ljava/lang/String;)V
.end method

.method public final native setFreeMemory(J)V
.end method

.method public final native setFreeStorage(J)V
.end method

.method public final native setIp(Ljava/lang/String;)V
.end method

.method public final native setNetworkReachability(Lcom/tl/uic/model/ReachabilityType;)V
.end method

.method public final native setOrientation(I)V
.end method
