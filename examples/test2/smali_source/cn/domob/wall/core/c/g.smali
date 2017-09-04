.class public Lcn/domob/wall/core/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/wall/core/h/d; = null

.field private static final g:Ljava/lang/String; = "ad"

.field private static final h:Ljava/lang/String; = "error"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcn/domob/wall/core/bean/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/c/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 134
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 135
    if-eqz v8, :cond_2d

    .line 136
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 138
    :try_start_12
    new-instance v1, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v7, 0x0

    move-wide v2, p1

    move-object/from16 v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/domob/wall/core/bean/AdInfo;-><init>(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/bean/ControlInfo;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_23} :catch_26

    .line 136
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 140
    :catch_26
    move-exception v1

    .line 141
    sget-object v2, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 147
    :cond_2d
    return-object v9
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 60
    const-string v1, "sid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/c/g;->b:Ljava/lang/String;

    .line 64
    const-string v1, "cid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/c/g;->c:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcn/domob/wall/core/c/g;->c:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcn/domob/wall/core/c/g;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 68
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/c/g;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/domob/wall/core/c/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    :cond_35
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 76
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_4c

    .line 80
    new-instance v1, Lcn/domob/wall/core/bean/a;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/bean/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/wall/core/c/g;->d:Lcn/domob/wall/core/bean/a;

    .line 114
    :goto_4a
    const/4 v0, 0x1

    .line 118
    :goto_4b
    return v0

    .line 83
    :cond_4c
    if-eqz v5, :cond_d9

    .line 84
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/c/h;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 86
    sget-object v0, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lasttime request\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 89
    const-string v4, "searchad"

    iget-object v6, p0, Lcn/domob/wall/core/c/g;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/domob/wall/core/c/g;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/g;->e:Ljava/util/List;

    .line 93
    const-string v4, "recommend"

    iget-object v6, p0, Lcn/domob/wall/core/c/g;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/domob/wall/core/c/g;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/g;->f:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->e:Ljava/util/List;

    if-eqz v0, :cond_ae

    .line 97
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 98
    sget-object v2, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    const-string v3, "searchad::"

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a5} :catch_a6

    goto :goto_8e

    .line 115
    :catch_a6
    move-exception v0

    .line 116
    sget-object v1, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_4b

    .line 101
    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->f:Ljava/util/List;

    if-eqz v0, :cond_d0

    .line 102
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 103
    sget-object v2, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    const-string v3, "searchad::"

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b8

    .line 107
    :cond_d0
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/c/h;->b(Landroid/content/Context;)V

    goto/16 :goto_4a

    .line 110
    :cond_d9
    sget-object v0, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "There is no ad response or error response."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_e0} :catch_a6

    goto/16 :goto_4a
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/wall/core/c/g;
    .registers 6

    .prologue
    .line 35
    new-instance v0, Lcn/domob/wall/core/c/g;

    invoke-direct {v0}, Lcn/domob/wall/core/c/g;-><init>()V

    .line 37
    invoke-direct {v0, p1, p2}, Lcn/domob/wall/core/c/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 38
    sget-object v1, Lcn/domob/wall/core/c/g;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 42
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcn/domob/wall/core/bean/a;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->d:Lcn/domob/wall/core/bean/a;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcn/domob/wall/core/c/g;->f:Ljava/util/List;

    return-object v0
.end method
