.class public Lcom/tl/uic/model/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x624363bfa74c5358L


# instance fields
.field private subType:Ljava/lang/String;

.field private tlEvent:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/EventInfo;

    const v1, 0x411

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

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getSubType()Ljava/lang/String;
.end method

.method public final native getTlEvent()Ljava/lang/String;
.end method

.method public final native getType()Ljava/lang/String;
.end method

.method public final native hashCode()I
.end method

.method public final native setSubType(Ljava/lang/String;)V
.end method

.method public final native setTlEvent(Ljava/lang/String;)V
.end method

.method public final native setType(Ljava/lang/String;)V
.end method
