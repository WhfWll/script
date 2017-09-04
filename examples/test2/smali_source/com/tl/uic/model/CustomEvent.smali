.class public Lcom/tl/uic/model/CustomEvent;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "CustomEvent.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e77d4b2f65c439aL


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

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/CustomEvent;

    const v1, 0x410

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 29
    sget-object v0, Lcom/tl/uic/model/MessageType;->CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/CustomEvent;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "logLevel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 41
    sget-object v0, Lcom/tl/uic/model/MessageType;->CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/CustomEvent;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/tl/uic/model/CustomEvent;->setLogLevel(I)V

    .line 43
    iput-object p3, p0, Lcom/tl/uic/model/CustomEvent;->data:Ljava/util/HashMap;

    .line 44
    iput-object p2, p0, Lcom/tl/uic/model/CustomEvent;->name:Ljava/lang/String;

    .line 45
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

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getName()Ljava/lang/String;
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

.method public final native setName(Ljava/lang/String;)V
.end method
