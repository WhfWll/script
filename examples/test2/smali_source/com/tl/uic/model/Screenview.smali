.class public Lcom/tl/uic/model/Screenview;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "Screenview.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6700b639974f07d1L


# instance fields
.field private logicalPageName:Ljava/lang/String;

.field private referringLogicalPageName:Ljava/lang/String;

.field private screenviewType:Lcom/tl/uic/model/ScreenviewType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/Screenview;

    const v1, 0x418

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/tl/uic/model/Screenview;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;Ljava/lang/String;)V
    .registers 4
    .param p1, "logicalPageName"    # Ljava/lang/String;
    .param p2, "screenviewType"    # Lcom/tl/uic/model/ScreenviewType;
    .param p3, "referrer"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 42
    invoke-direct {p0}, Lcom/tl/uic/model/Screenview;->init()V

    .line 43
    iput-object p1, p0, Lcom/tl/uic/model/Screenview;->logicalPageName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/tl/uic/model/Screenview;->screenviewType:Lcom/tl/uic/model/ScreenviewType;

    .line 45
    iput-object p3, p0, Lcom/tl/uic/model/Screenview;->referringLogicalPageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private native init()V
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getLogicalPageName()Ljava/lang/String;
.end method

.method public final native getReferringLogicalPageName()Ljava/lang/String;
.end method

.method public final native getScreenviewType()Lcom/tl/uic/model/ScreenviewType;
.end method

.method public final native setLogicalPageName(Ljava/lang/String;)V
.end method

.method public final native setReferringLogicalPageName(Ljava/lang/String;)V
.end method

.method public final native setScreenviewType(Lcom/tl/uic/model/ScreenviewType;)V
.end method
