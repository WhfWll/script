.class public Lcom/tl/uic/model/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x455e27e94aeb1850L


# instance fields
.field private currentState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dwell:J

.field private id:Ljava/lang/String;

.field private position:Lcom/tl/uic/model/Position;

.field private previousState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private tlType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visitedCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/Target;

    const v1, 0x41b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/tl/uic/model/Target;->visitedCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native getCurrentState()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getDwell()J
.end method

.method public final native getId()Ljava/lang/String;
.end method

.method public final native getJSON()Lorg/json/JSONObject;
.end method

.method public final native getPosition()Lcom/tl/uic/model/Position;
.end method

.method public final native getPreviousState()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getSubType()Ljava/lang/String;
.end method

.method public final native getTlType()Ljava/lang/String;
.end method

.method public final native getType()Ljava/lang/String;
.end method

.method public final native getVisitedCount()I
.end method

.method public final native hashCode()I
.end method

.method public final native setCurrentState(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final native setDwell(J)V
.end method

.method public final native setId(Ljava/lang/String;)V
.end method

.method public final native setPosition(Lcom/tl/uic/model/Position;)V
.end method

.method public final native setPreviousState(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final native setSubType(Ljava/lang/String;)V
.end method

.method public final native setTlType(Ljava/lang/String;)V
.end method

.method public final native setType(Ljava/lang/String;)V
.end method

.method public final native setVisitedCount(I)V
.end method
