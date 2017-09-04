.class public Lcom/tl/uic/model/Control;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "Control.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xbedb68c99f7bf16L


# instance fields
.field private eventInfo:Lcom/tl/uic/model/EventInfo;

.field private focusInOffset:J

.field private target:Lcom/tl/uic/model/Target;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/Control;

    const v1, 0x40f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 27
    sget-object v0, Lcom/tl/uic/model/MessageType;->CONTROL:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/Control;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getEventInfo()Lcom/tl/uic/model/EventInfo;
.end method

.method public final native getFocusInOffset()J
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getTarget()Lcom/tl/uic/model/Target;
.end method

.method public final native hashCode()I
.end method

.method public final native setEventInfo(Lcom/tl/uic/model/EventInfo;)V
.end method

.method public final native setFocusInOffset(J)V
.end method

.method public final native setTarget(Lcom/tl/uic/model/Target;)V
.end method
