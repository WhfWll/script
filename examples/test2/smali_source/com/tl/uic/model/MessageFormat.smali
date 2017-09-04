.class public Lcom/tl/uic/model/MessageFormat;
.super Ljava/lang/Object;
.source "MessageFormat.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x67adf602e9b29f81L


# instance fields
.field private messageVersion:Ljava/lang/String;

.field private serialNumber:I

.field private session:Lcom/tl/uic/model/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/MessageFormat;

    const v1, 0x414

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

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getMessageVersion()Ljava/lang/String;
.end method

.method public final native getSerialNumber()I
.end method

.method public final native getSession()Lcom/tl/uic/model/Session;
.end method

.method public final native setMessageVersion(Ljava/lang/String;)V
.end method

.method public final native setSerialNumber(I)V
.end method

.method public final native setSession(Lcom/tl/uic/model/Session;)V
.end method
