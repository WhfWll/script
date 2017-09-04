.class public Lcom/tl/uic/model/ClientEnvironment;
.super Ljava/lang/Object;
.source "ClientEnvironment.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4580883b7f4802e9L


# instance fields
.field private height:I

.field private mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

.field private osVersion:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/ClientEnvironment;

    const v1, 0x40b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native getHeight()I
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getMobileEnvironment()Lcom/tl/uic/model/MobileEnvironment;
.end method

.method public final native getOsVersion()Ljava/lang/String;
.end method

.method public final native getWidth()I
.end method

.method public final native setHeight(I)V
.end method

.method public final native setMobileEnvironment(Lcom/tl/uic/model/MobileEnvironment;)V
.end method

.method public final native setOsVersion(Ljava/lang/String;)V
.end method

.method public final native setWidth(I)V
.end method
