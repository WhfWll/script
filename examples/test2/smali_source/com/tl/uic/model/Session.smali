.class public Lcom/tl/uic/model/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4bcafe8a4a339ed0L


# instance fields
.field private clientEnvironment:Lcom/tl/uic/model/ClientEnvironment;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;"
        }
    .end annotation
.end field

.field private sessionID:Ljava/lang/String;

.field private sessionStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/Session;

    const v1, 0x419

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/model/Session;->messages:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native cleanMessages()Ljava/lang/Boolean;
.end method

.method public final native getClientEnvironment()Lcom/tl/uic/model/ClientEnvironment;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;"
        }
    .end annotation
.end method

.method public final native getSessionID()Ljava/lang/String;
.end method

.method public final native getSessionStartTime()J
.end method

.method public final native setClientEnvironment(Lcom/tl/uic/model/ClientEnvironment;)V
.end method

.method public final native setMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public final native setSessionID(Ljava/lang/String;)V
.end method

.method public final native setSessionStartTime(J)V
.end method
