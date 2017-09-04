.class public Lcom/tl/uic/model/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57692b230d050024L


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/Position;

    const v1, 0x417

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getHeight()I
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getWidth()I
.end method

.method public final native getX()I
.end method

.method public final native getY()I
.end method

.method public final native hashCode()I
.end method

.method public final native setHeight(I)V
.end method

.method public final native setWidth(I)V
.end method

.method public final native setX(I)V
.end method

.method public final native setY(I)V
.end method
