.class public Lcn/dbox/core/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/c/b$a;
    }
.end annotation


# static fields
.field private static c:Lcn/dbox/core/h/d;


# instance fields
.field a:Lcn/dbox/core/c/b$a;

.field private b:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/c/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/c/b;->c:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/c/b;->b:Lorg/json/JSONArray;

    .line 25
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 28
    const-string v1, "turnoff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcn/dbox/core/c/b;->b:Lorg/json/JSONArray;

    .line 31
    new-instance v1, Lcn/dbox/core/c/b$a;

    const-string v2, "req_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/dbox/core/c/b$a;-><init>(Lcn/dbox/core/c/b;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/dbox/core/c/b;->a:Lcn/dbox/core/c/b$a;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_33

    .line 38
    :goto_29
    return-void

    .line 33
    :catch_2a
    move-exception v0

    .line 34
    sget-object v0, Lcn/dbox/core/c/b;->c:Lcn/dbox/core/h/d;

    const-string v1, "Config resp is not in JSONObject"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_29

    .line 35
    :catch_33
    move-exception v0

    .line 36
    sget-object v1, Lcn/dbox/core/c/b;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 48
    :try_start_c
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_16

    .line 46
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 49
    :catch_16
    move-exception v1

    .line 50
    sget-object v3, Lcn/dbox/core/c/b;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 53
    :cond_1d
    return-object v2
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcn/dbox/core/c/b;->b:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcn/dbox/core/c/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcn/dbox/core/c/b$a;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcn/dbox/core/c/b;->a:Lcn/dbox/core/c/b$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigResponse [mDisabledParamsValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/c/b;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/c/b;->a:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
