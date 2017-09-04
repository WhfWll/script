.class public Lcom/tl/uic/model/JSONException;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "JSONException.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x193a2a0ed8275145L


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/JSONException;

    const v1, 0x412

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 29
    sget-object v0, Lcom/tl/uic/model/MessageType;->EXCEPTION:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/JSONException;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/JSONException;->setLogLevel(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native getData()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getDescription()Ljava/lang/String;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public final native getStackTrace()Ljava/lang/String;
.end method

.method public final native setData(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final native setDescription(Ljava/lang/String;)V
.end method

.method public final native setName(Ljava/lang/String;)V
.end method

.method public final native setStackTrace(Ljava/lang/String;)V
.end method
