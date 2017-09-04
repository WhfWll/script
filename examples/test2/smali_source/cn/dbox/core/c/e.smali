.class public Lcn/dbox/core/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/dbox/core/h/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcn/dbox/core/bean/h;

.field private f:Lcn/dbox/core/bean/g;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/c/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/c/e;->a:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/c/e;->i:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/c/e;->j:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/c/e;->k:Ljava/util/HashMap;

    .line 103
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 125
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 127
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/dbox/core/c/e;->b:Ljava/lang/String;

    .line 129
    const-string v2, "cid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/dbox/core/c/e;->c:Ljava/lang/String;

    .line 131
    const-string v2, "dmid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/dbox/core/c/e;->d:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcn/dbox/core/c/e;->c:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcn/dbox/core/c/e;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 136
    invoke-static {}, Lcn/dbox/core/c/f;->a()Lcn/dbox/core/c/f;

    move-result-object v2

    iget-object v3, p0, Lcn/dbox/core/c/e;->c:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcn/dbox/core/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    :cond_3a
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 144
    const-string v3, "control"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 147
    if-eqz v2, :cond_51

    .line 148
    new-instance v0, Lcn/dbox/core/bean/h;

    invoke-direct {v0, v2}, Lcn/dbox/core/bean/h;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/dbox/core/c/e;->e:Lcn/dbox/core/bean/h;

    .line 229
    :goto_4f
    const/4 v0, 0x1

    .line 233
    :goto_50
    return v0

    .line 151
    :cond_51
    if-eqz v3, :cond_5a

    .line 152
    new-instance v2, Lcn/dbox/core/bean/g;

    invoke-direct {v2, v3}, Lcn/dbox/core/bean/g;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcn/dbox/core/c/e;->f:Lcn/dbox/core/bean/g;

    .line 155
    :cond_5a
    const-string v2, "channels"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    .line 170
    const-string v2, "ads"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_97

    move v2, v1

    .line 173
    :goto_70
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_8f

    move-result v0

    if-ge v2, v0, :cond_97

    .line 175
    :try_start_76
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    new-instance v5, Lcn/dbox/core/bean/a;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/dbox/core/bean/a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_84} :catch_88
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_84} :catch_8f

    .line 173
    :goto_84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_70

    .line 177
    :catch_88
    move-exception v0

    .line 178
    :try_start_89
    sget-object v5, Lcn/dbox/core/c/e;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v5, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_8f

    goto :goto_84

    .line 230
    :catch_8f
    move-exception v0

    .line 231
    sget-object v2, Lcn/dbox/core/c/e;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 233
    goto :goto_50

    .line 197
    :cond_97
    :try_start_97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/c/e;->g:Ljava/util/ArrayList;

    .line 198
    if-eqz v3, :cond_c0

    move v2, v1

    .line 199
    :goto_a1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a4} :catch_8f

    move-result v0

    if-ge v2, v0, :cond_c0

    .line 201
    :try_start_a7
    iget-object v0, p0, Lcn/dbox/core/c/e;->g:Ljava/util/ArrayList;

    new-instance v4, Lcn/dbox/core/bean/c;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/dbox/core/bean/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_b5} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b5} :catch_8f

    .line 199
    :goto_b5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a1

    .line 203
    :catch_b9
    move-exception v0

    .line 204
    :try_start_ba
    sget-object v4, Lcn/dbox/core/c/e;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v4, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_b5

    .line 210
    :cond_c0
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    .line 211
    iget-object v3, p0, Lcn/dbox/core/c/e;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    .line 215
    :cond_dc
    iget-object v0, p0, Lcn/dbox/core/c/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/c;

    .line 216
    invoke-virtual {v0}, Lcn/dbox/core/bean/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 218
    iget-object v4, p0, Lcn/dbox/core/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v4, p0, Lcn/dbox/core/c/e;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f6

    .line 223
    :cond_111
    invoke-virtual {p0}, Lcn/dbox/core/c/e;->j()V

    .line 225
    invoke-static {}, Lcn/dbox/core/c/f;->a()Lcn/dbox/core/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/dbox/core/c/f;->b(Landroid/content/Context;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_11b} :catch_8f

    goto/16 :goto_4f
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcn/dbox/core/c/e;
    .registers 6

    .prologue
    .line 106
    new-instance v0, Lcn/dbox/core/c/e;

    invoke-direct {v0}, Lcn/dbox/core/c/e;-><init>()V

    .line 108
    invoke-direct {v0, p1, p2}, Lcn/dbox/core/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 109
    sget-object v1, Lcn/dbox/core/c/e;->a:Lcn/dbox/core/h/d;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 113
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/dbox/core/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/dbox/core/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcn/dbox/core/c/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcn/dbox/core/bean/h;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/dbox/core/c/e;->e:Lcn/dbox/core/bean/h;

    return-object v0
.end method

.method public e()Lcn/dbox/core/bean/g;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcn/dbox/core/c/e;->f:Lcn/dbox/core/bean/g;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcn/dbox/core/c/e;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcn/dbox/core/c/e;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public i()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcn/dbox/core/c/e;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public j()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 255
    .line 257
    iget-object v0, p0, Lcn/dbox/core/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/dbox/core/bean/d;

    .line 258
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->i()Ljava/util/ArrayList;

    move-result-object v8

    .line 261
    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/core/bean/d$a;->b()Ljava/util/ArrayList;

    move-result-object v9

    move v2, v3

    .line 264
    :goto_2b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6b

    move v4, v3

    .line 266
    :goto_32
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_67

    .line 268
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 270
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->h()I

    move-result v10

    if-ge v0, v10, :cond_63

    .line 271
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_63
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_32

    .line 264
    :cond_67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b

    .line 277
    :cond_6b
    if-eqz v9, :cond_a4

    move v2, v3

    .line 278
    :goto_6e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a4

    move v4, v3

    .line 279
    :goto_75
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a0

    .line 280
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 282
    iget-object v0, p0, Lcn/dbox/core/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_9c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_75

    .line 278
    :cond_a0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6e

    .line 288
    :cond_a4
    invoke-virtual {v1, v6}, Lcn/dbox/core/bean/d;->a(Ljava/util/ArrayList;)V

    .line 289
    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/dbox/core/bean/d$a;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 292
    :cond_b0
    return-void
.end method
