.class Lcn/domob/android/j/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/j/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/b$a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/b$a;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/android/j/b$a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/domob/android/j/b$a;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 241
    iput-object p1, p0, Lcn/domob/android/j/b$a$a;->a:Lcn/domob/android/j/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput v2, p0, Lcn/domob/android/j/b$a$a;->b:I

    .line 233
    iput-boolean v1, p0, Lcn/domob/android/j/b$a$a;->c:Z

    .line 234
    iput-boolean v1, p0, Lcn/domob/android/j/b$a$a;->d:Z

    .line 235
    iput-boolean v1, p0, Lcn/domob/android/j/b$a$a;->e:Z

    .line 236
    iput-boolean v2, p0, Lcn/domob/android/j/b$a$a;->f:Z

    .line 237
    iput v2, p0, Lcn/domob/android/j/b$a$a;->g:I

    .line 238
    iput v1, p0, Lcn/domob/android/j/b$a$a;->h:I

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/android/j/b$a$a;->i:Ljava/util/ArrayList;

    .line 242
    if-eqz p2, :cond_e5

    .line 243
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/j/b$a$a;->b:I

    .line 244
    iget v0, p0, Lcn/domob/android/j/b$a$a;->b:I

    if-eqz v0, :cond_35

    iget v0, p0, Lcn/domob/android/j/b$a$a;->b:I

    if-eq v0, v1, :cond_35

    iget v0, p0, Lcn/domob/android/j/b$a$a;->b:I

    if-eq v0, v4, :cond_35

    .line 245
    iput v2, p0, Lcn/domob/android/j/b$a$a;->b:I

    .line 247
    :cond_35
    const-string v0, "full"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_50

    .line 249
    const-string v3, "visible"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcn/domob/android/j/b$a$a;->c:Z

    .line 250
    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_d4

    move v0, v1

    :goto_4e
    iput-boolean v0, p0, Lcn/domob/android/j/b$a$a;->d:Z

    .line 252
    :cond_50
    const-string v0, "mute"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_76

    .line 254
    const-string v3, "visible"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcn/domob/android/j/b$a$a;->e:Z

    .line 255
    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/j/b$a$a;->g:I

    .line 256
    iget v0, p0, Lcn/domob/android/j/b$a$a;->g:I

    if-eqz v0, :cond_76

    iget v0, p0, Lcn/domob/android/j/b$a$a;->g:I

    if-eq v0, v1, :cond_76

    iget v0, p0, Lcn/domob/android/j/b$a$a;->g:I

    if-eq v0, v4, :cond_76

    .line 257
    iput v2, p0, Lcn/domob/android/j/b$a$a;->g:I

    .line 260
    :cond_76
    const-string v0, "btn_space"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/j/b$a$a;->h:I

    .line 261
    iget v0, p0, Lcn/domob/android/j/b$a$a;->h:I

    if-gez v0, :cond_d7

    move v0, v1

    :goto_83
    iput v0, p0, Lcn/domob/android/j/b$a$a;->h:I

    .line 262
    const-string v0, "btn_show"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_da

    :goto_8d
    iput-boolean v1, p0, Lcn/domob/android/j/b$a$a;->f:Z

    .line 263
    const-string v0, "btns"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_e5

    .line 265
    :goto_97
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_e5

    .line 267
    :try_start_9d
    new-instance v0, Lcn/domob/android/j/b$a$a$a;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcn/domob/android/j/b$a$a$a;-><init>(Lcn/domob/android/j/b$a$a;Lorg/json/JSONObject;)V

    .line 268
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 269
    if-eqz v3, :cond_d1

    const-string v4, "goto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    const-string v4, "replay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 272
    :cond_cc
    iget-object v3, p0, Lcn/domob/android/j/b$a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_d1} :catch_dc

    .line 265
    :cond_d1
    :goto_d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_d4
    move v0, v2

    .line 250
    goto/16 :goto_4e

    .line 261
    :cond_d7
    iget v0, p0, Lcn/domob/android/j/b$a$a;->h:I

    goto :goto_83

    :cond_da
    move v1, v2

    .line 262
    goto :goto_8d

    .line 274
    :catch_dc
    move-exception v0

    .line 275
    invoke-static {}, Lcn/domob/android/j/b;->i()Lcn/domob/android/i/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 280
    :cond_e5
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcn/domob/android/j/b$a$a;->b:I

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcn/domob/android/j/b$a$a;->c:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lcn/domob/android/j/b$a$a;->d:Z

    return v0
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcn/domob/android/j/b$a$a;->e:Z

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Lcn/domob/android/j/b$a$a;->g:I

    return v0
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Lcn/domob/android/j/b$a$a;->h:I

    return v0
.end method

.method protected g()Z
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcn/domob/android/j/b$a$a;->f:Z

    return v0
.end method

.method protected h()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/android/j/b$a$a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcn/domob/android/j/b$a$a;->i:Ljava/util/ArrayList;

    return-object v0
.end method
