.class public Lcom/tl/uic/model/Connection;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "Connection.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cfd58480bd84dceL


# instance fields
.field private initTime:J

.field private loadTime:J

.field private responseDataSize:J

.field private responseTime:J

.field private statusCode:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/Connection;

    const v1, 0x40e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 29
    sget-object v0, Lcom/tl/uic/model/MessageType;->CONNECTION:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/Connection;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native getInitTime()J
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getLoadTime()J
.end method

.method public final native getResponseDataSize()J
.end method

.method public final native getResponseTime()J
.end method

.method public final native getStatusCode()I
.end method

.method public final native getUrl()Ljava/lang/String;
.end method

.method public final native setInitTime(J)V
.end method

.method public final native setLoadTime(J)V
.end method

.method public final native setResponseDataSize(J)V
.end method

.method public final native setResponseTime(J)V
.end method

.method public final native setStatusCode(I)V
.end method

.method public final native setUrl(Ljava/lang/String;)V
.end method
