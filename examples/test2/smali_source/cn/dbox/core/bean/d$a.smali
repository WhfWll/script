.class public Lcn/dbox/core/bean/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/bean/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/bean/d;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/dbox/core/bean/d;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 221
    iput-object p1, p0, Lcn/dbox/core/bean/d$a;->a:Lcn/dbox/core/bean/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    if-eqz p2, :cond_4b

    .line 223
    const-string v0, "interval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/dbox/core/bean/d$a;->b:I

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/d$a;->c:Ljava/util/ArrayList;

    .line 227
    :try_start_16
    new-instance v2, Lorg/json/JSONArray;

    const-string v0, "adids"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_26} :catch_3f

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 231
    :try_start_29
    iget-object v0, p0, Lcn/dbox/core/bean/d$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_32} :catch_36

    .line 229
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 232
    :catch_36
    move-exception v0

    .line 233
    :try_start_37
    invoke-static {}, Lcn/dbox/core/bean/d;->m()Lcn/dbox/core/h/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_32

    .line 236
    :catch_3f
    move-exception v0

    .line 237
    invoke-static {}, Lcn/dbox/core/bean/d;->m()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 240
    :cond_4b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcn/dbox/core/bean/d$a;->b:I

    return v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iput-object p1, p0, Lcn/dbox/core/bean/d$a;->d:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method public b()Ljava/util/ArrayList;
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
    .line 204
    iget-object v0, p0, Lcn/dbox/core/bean/d$a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
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
    .line 218
    iget-object v0, p0, Lcn/dbox/core/bean/d$a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContainerInfoHeader [mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/dbox/core/bean/d$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerHeaderAdids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
