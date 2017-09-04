.class public Lcom/tl/uic/model/ClientState;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "ClientState.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xff255eab1472e51L


# instance fields
.field private mobileState:Lcom/tl/uic/model/MobileState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/ClientState;

    const v1, 0x40d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 24
    sget-object v0, Lcom/tl/uic/model/MessageType;->CLIENT_STATE:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/ClientState;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getMobileState()Lcom/tl/uic/model/MobileState;
.end method

.method public final native hashCode()I
.end method

.method public final native setMobileState(Lcom/tl/uic/model/MobileState;)V
.end method
