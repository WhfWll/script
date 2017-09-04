.class public Lcn/domob/wall/core/bean/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/a;->a:I

    .line 24
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/a;->b:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcn/domob/wall/core/bean/a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/wall/core/bean/a;->b:Ljava/lang/String;

    return-object v0
.end method
