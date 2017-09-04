.class public Lcom/tl/uic/model/AndroidArray;
.super Ljava/lang/Object;
.source "AndroidArray.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5058995dd647841eL


# instance fields
.field private brand:Ljava/lang/String;

.field private fingerPrint:Ljava/lang/String;

.field private keyboardType:Lcom/tl/uic/model/KeyboardType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/AndroidArray;

    const v1, 0x409

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

.method public final native getBrand()Ljava/lang/String;
.end method

.method public final native getFingerPrint()Ljava/lang/String;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getKeyboardType()Lcom/tl/uic/model/KeyboardType;
.end method

.method public final native setBrand(Ljava/lang/String;)V
.end method

.method public final native setFingerPrint(Ljava/lang/String;)V
.end method

.method public final native setKeyboardType(Lcom/tl/uic/model/KeyboardType;)V
.end method
