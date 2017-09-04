.class public Lcom/tl/uic/model/JSONMessage;
.super Ljava/lang/Object;
.source "JSONMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x373047918898ad90L


# instance fields
.field private jsonData:Ljava/lang/String;

.field private logLevel:I

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/JSONMessage;

    const v1, 0x413

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/tl/uic/model/ClientMessageHeader;)V
    .registers 4
    .param p1, "message"    # Lcom/tl/uic/model/ClientMessageHeader;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/tl/uic/model/ClientMessageHeader;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    .line 31
    invoke-virtual {p1}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    .line 33
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getJsonData()Ljava/lang/String;
.end method

.method public final native getLogLevel()I
.end method

.method public final native getSize()J
.end method

.method public final native hashCode()I
.end method

.method public final native setJsonData(Ljava/lang/String;)V
.end method

.method public final native setLogLevel(I)V
.end method

.method public final native setSize(J)V
.end method

.method public final native toString()Ljava/lang/String;
.end method
