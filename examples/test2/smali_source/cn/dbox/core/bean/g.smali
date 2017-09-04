.class public Lcn/dbox/core/bean/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/bean/g$a;
    }
.end annotation


# static fields
.field private static a:Lcn/dbox/core/h/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcn/dbox/core/bean/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/bean/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/bean/g;->a:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_1a

    .line 16
    :try_start_5
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/g;->b:Ljava/lang/String;

    .line 18
    new-instance v0, Lcn/dbox/core/bean/g$a;

    const-string v1, "entry"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/dbox/core/bean/g$a;-><init>(Lcn/dbox/core/bean/g;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/dbox/core/bean/g;->c:Lcn/dbox/core/bean/g$a;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 25
    :cond_1a
    :goto_1a
    return-void

    .line 22
    :catch_1b
    move-exception v0

    .line 23
    sget-object v1, Lcn/dbox/core/bean/g;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcn/dbox/core/bean/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcn/dbox/core/bean/g$a;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/dbox/core/bean/g;->c:Lcn/dbox/core/bean/g$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlInfo [mLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSEControlEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/g;->c:Lcn/dbox/core/bean/g$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
