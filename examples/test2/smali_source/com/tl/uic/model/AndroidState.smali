.class public Lcom/tl/uic/model/AndroidState;
.super Ljava/lang/Object;
.source "AndroidState.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x118747e5694d22dbL


# instance fields
.field private keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/AndroidState;

    const v1, 0x40a

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

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getKeyboardStateType()Lcom/tl/uic/model/KeyboardStateType;
.end method

.method public final native hashCode()I
.end method

.method public final native setKeyboardStateType(Lcom/tl/uic/model/KeyboardStateType;)V
.end method
