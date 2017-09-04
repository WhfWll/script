.class public Lcom/tl/uic/model/ClientMessageHeader;
.super Ljava/lang/Object;
.source "ClientMessageHeader.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc2a16675d74ef85L


# instance fields
.field private fromWeb:Ljava/lang/Boolean;

.field private logLevel:I

.field private messageType:Lcom/tl/uic/model/MessageType;

.field private offset:J

.field private screenviewOffset:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/ClientMessageHeader;

    const v1, 0x40c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    .line 30
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplicationScreenviewOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->fromWeb:Ljava/lang/Boolean;

    .line 32
    return-void
.end method


# virtual methods
.method public native clean()Ljava/lang/Boolean;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getFromWeb()Ljava/lang/Boolean;
.end method

.method public native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getLogLevel()I
.end method

.method public final native getMessageType()Lcom/tl/uic/model/MessageType;
.end method

.method public final native getOffset()J
.end method

.method public final native getScreenviewOffset()J
.end method

.method public native hashCode()I
.end method

.method public final native setFromWeb(Ljava/lang/Boolean;)V
.end method

.method public final native setLogLevel(I)V
.end method

.method public final native setMessageType(Lcom/tl/uic/model/MessageType;)V
.end method

.method public final native setOffset(J)V
.end method

.method public final native setScreenviewOffset(J)V
.end method
