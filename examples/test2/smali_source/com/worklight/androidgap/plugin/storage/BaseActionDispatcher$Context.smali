.class public Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
.super Ljava/lang/Object;
.source "BaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private cordovaContext:Lorg/apache/cordova/api/CordovaInterface;

.field private parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    const v1, 0x480

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .registers 3
    .param p1, "cordovaContext"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->cordovaContext:Lorg/apache/cordova/api/CordovaInterface;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private native addParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method


# virtual methods
.method public native getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method public native getBooleanParameter(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public native getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;
.end method

.method public native getFloatParameter(Ljava/lang/String;)F
.end method

.method public native getIntParameter(Ljava/lang/String;)I
.end method

.method public native getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public native getStringParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;
.end method
