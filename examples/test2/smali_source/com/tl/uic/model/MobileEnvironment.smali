.class public Lcom/tl/uic/model/MobileEnvironment;
.super Ljava/lang/Object;
.source "MobileEnvironment.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40b98931475f8aebL


# instance fields
.field private androidArray:Lcom/tl/uic/model/AndroidArray;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private orientationType:Lcom/tl/uic/model/OrientationType;

.field private totalMemory:J

.field private totalStorage:J

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/MobileEnvironment;

    const v1, 0x415

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

.method public final native getAndroidArray()Lcom/tl/uic/model/AndroidArray;
.end method

.method public final native getAppName()Ljava/lang/String;
.end method

.method public final native getAppVersion()Ljava/lang/String;
.end method

.method public final native getDeviceModel()Ljava/lang/String;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getLanguage()Ljava/lang/String;
.end method

.method public final native getLocale()Ljava/lang/String;
.end method

.method public final native getManufacturer()Ljava/lang/String;
.end method

.method public final native getOrientationType()Lcom/tl/uic/model/OrientationType;
.end method

.method public final native getTotalMemory()J
.end method

.method public final native getTotalStorage()J
.end method

.method public final native getUserID()Ljava/lang/String;
.end method

.method public final native setAndroidArray(Lcom/tl/uic/model/AndroidArray;)V
.end method

.method public final native setAppName(Ljava/lang/String;)V
.end method

.method public final native setAppVersion(Ljava/lang/String;)V
.end method

.method public final native setDeviceModel(Ljava/lang/String;)V
.end method

.method public final native setLanguage(Ljava/lang/String;)V
.end method

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method public final native setManufacturer(Ljava/lang/String;)V
.end method

.method public final native setOrientationType(Lcom/tl/uic/model/OrientationType;)V
.end method

.method public final native setTotalMemory(J)V
.end method

.method public final native setTotalStorage(J)V
.end method

.method public final native setUserID(Ljava/lang/String;)V
.end method
