.class public Lcn/domob/wall/core/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/wall/core/h/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcn/domob/wall/core/bean/a;

.field private e:Lcn/domob/wall/core/bean/ControlInfo;

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

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/c/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private a(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    if-eqz p1, :cond_1e

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 153
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->isNew()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 154
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    goto :goto_8

    :cond_1e
    move v1, v0

    .line 158
    :cond_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_1c
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 331
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-direct {p0, p2}, Lcn/domob/wall/core/c/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 336
    const/4 v0, -0x1

    move v1, v2

    move v4, v0

    move v0, v2

    .line 338
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_52

    move v5, v2

    move v3, v0

    .line 340
    :goto_16
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_3a

    .line 341
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_34

    .line 342
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 340
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_16

    .line 346
    :cond_3a
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPosition()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_e

    .line 350
    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 351
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 353
    :cond_62
    return-object v6
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
    .line 249
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 251
    if-eqz v9, :cond_33

    .line 252
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 254
    :try_start_12
    new-instance v1, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v7, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    move-wide v2, p1

    move-object/from16 v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/domob/wall/core/bean/AdInfo;-><init>(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/bean/ControlInfo;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_24} :catch_27

    .line 252
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 256
    :catch_27
    move-exception v1

    .line 257
    sget-object v2, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 260
    :cond_2e
    invoke-direct {p0, v8}, Lcn/domob/wall/core/c/e;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 263
    :goto_32
    return-object v0

    :cond_33
    move-object v0, v8

    goto :goto_32
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Lcn/domob/wall/core/h/e;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 175
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 179
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 181
    sget-object v4, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionCode()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v4, v5, :cond_106

    .line 187
    sget-object v4, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v3

    sget-object v4, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    if-eq v3, v4, :cond_8

    .line 192
    iget-object v3, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    if-eqz v3, :cond_8

    .line 193
    iget-object v3, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v3}, Lcn/domob/wall/core/bean/ControlInfo;->isShowUpdate()Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 194
    sget-object v3, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v3}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/domob/wall/core/bean/AdInfo;->setClickActionType(I)V
    :try_end_e4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_e4} :catch_e6

    goto/16 :goto_8

    .line 229
    :catch_e6
    move-exception v0

    .line 230
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_8

    .line 197
    :cond_ec
    :try_start_ec
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 198
    sget-object v3, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    const-string v4, "This application %s has been installed and ClickActionType is not launch and controlInfo showUpdate is flase, so removed, and is no longer displayed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 206
    :cond_106
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v3

    sget-object v4, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    if-eq v3, v4, :cond_8

    .line 207
    iget-object v3, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    if-eqz v3, :cond_8

    .line 208
    iget-object v3, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v3}, Lcn/domob/wall/core/bean/ControlInfo;->isShowOpen()Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 210
    const-string v3, "domob://launch/?pkg=%s&failsafe=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionURL()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 214
    sget-object v4, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v4}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Lcn/domob/wall/core/bean/AdInfo;->setClickActionType(I)V

    .line 216
    invoke-virtual {v0, v3}, Lcn/domob/wall/core/bean/AdInfo;->setAdActionURL(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 220
    :cond_13f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 221
    sget-object v3, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    const-string v4, "This application %s has been installed and ClickActionType is not launch and controlInfo showOpen is flase, so removed, and is no longer displayed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V
    :try_end_157
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ec .. :try_end_157} :catch_e6

    goto/16 :goto_8

    .line 235
    :cond_159
    return-object p2
.end method

.method private a(Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/bean/ControlInfo;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/ControlInfo;->getAdOrder()Lcn/domob/wall/core/bean/ControlInfo$a;

    move-result-object v1

    .line 313
    sget-object v2, Lcn/domob/wall/core/bean/ControlInfo$a;->a:Lcn/domob/wall/core/bean/ControlInfo$a;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/ControlInfo$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 315
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    :goto_10
    return-object p3

    .line 317
    :cond_11
    sget-object v2, Lcn/domob/wall/core/bean/ControlInfo$a;->b:Lcn/domob/wall/core/bean/ControlInfo$a;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/ControlInfo$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 319
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p3, p2

    .line 320
    goto :goto_10

    .line 321
    :cond_1e
    sget-object v2, Lcn/domob/wall/core/bean/ControlInfo$a;->c:Lcn/domob/wall/core/bean/ControlInfo$a;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/ControlInfo$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 323
    invoke-direct {p0, p2, p3}, Lcn/domob/wall/core/c/e;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_10

    :cond_2b
    move-object p3, v0

    goto :goto_10
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    const-string v0, "extend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    if-eqz v2, :cond_33

    .line 280
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 283
    :try_start_14
    new-instance v1, Lcn/domob/wall/core/bean/AdExtend;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcn/domob/wall/core/bean/AdExtend;-><init>(Lorg/json/JSONObject;)V

    .line 285
    if-eqz v1, :cond_22

    .line 286
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lcn/domob/wall/core/e/b; {:try_start_14 .. :try_end_22} :catch_25
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_22} :catch_2c

    .line 280
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 289
    :catch_25
    move-exception v1

    .line 290
    sget-object v4, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v4, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 291
    :catch_2c
    move-exception v1

    .line 292
    sget-object v4, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v4, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 296
    :cond_33
    sget-object v0, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdExtendList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 297
    return-object v3
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_43

    .line 363
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3f

    .line 364
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPosition()I

    move-result v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPosition()I

    move-result v0

    if-le v1, v0, :cond_3b

    .line 366
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 367
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/domob/wall/core/bean/AdInfo;

    .line 368
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_3b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    .line 361
    :cond_3f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 376
    :cond_43
    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 69
    const-string v1, "sid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/c/e;->b:Ljava/lang/String;

    .line 73
    const-string v1, "cid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/c/e;->c:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcn/domob/wall/core/c/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcn/domob/wall/core/c/e;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 77
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/domob/wall/core/c/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/domob/wall/core/c/e;->h:Ljava/util/List;

    .line 83
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 86
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    const-string v2, "control"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    if-eqz v1, :cond_59

    .line 93
    new-instance v0, Lcn/domob/wall/core/bean/a;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/bean/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/e;->d:Lcn/domob/wall/core/bean/a;

    .line 135
    :goto_57
    const/4 v0, 0x1

    .line 139
    :goto_58
    return v0

    .line 95
    :cond_59
    if-eqz v0, :cond_62

    .line 96
    new-instance v1, Lcn/domob/wall/core/bean/ControlInfo;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/bean/ControlInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    .line 99
    :cond_62
    if-eqz v5, :cond_d4

    .line 100
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/c/h;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 102
    sget-object v0, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

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

    .line 104
    const-string v4, "wheel"

    iget-object v6, p0, Lcn/domob/wall/core/c/e;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/domob/wall/core/c/e;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/e;->g:Ljava/util/List;

    .line 108
    invoke-direct {p0, v5}, Lcn/domob/wall/core/c/e;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/e;->i:Ljava/util/List;

    .line 111
    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcn/domob/wall/core/c/e;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/domob/wall/core/c/e;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-direct {p0, p1, v0}, Lcn/domob/wall/core/c/e;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 117
    const-string v4, "own"

    iget-object v6, p0, Lcn/domob/wall/core/c/e;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/domob/wall/core/c/e;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-direct {p0, p1, v1}, Lcn/domob/wall/core/c/e;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-direct {p0, v2, v0, v1}, Lcn/domob/wall/core/c/e;->a(Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/e;->f:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

    iget-object v1, p0, Lcn/domob/wall/core/c/e;->f:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/domob/wall/core/c/e;->a(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/ControlInfo;->setNumberOfNewAd(I)V

    .line 128
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/c/h;->b(Landroid/content/Context;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cb} :catch_cc

    goto :goto_57

    .line 136
    :catch_cc
    move-exception v0

    .line 137
    sget-object v1, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 139
    const/4 v0, 0x0

    goto :goto_58

    .line 131
    :cond_d4
    :try_start_d4
    sget-object v0, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "There is no ad response or error response."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_db} :catch_cc

    goto/16 :goto_57
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 388
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 389
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->isNew()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 390
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 394
    :cond_22
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/wall/core/c/e;
    .registers 6

    .prologue
    .line 44
    new-instance v0, Lcn/domob/wall/core/c/e;

    invoke-direct {v0}, Lcn/domob/wall/core/c/e;-><init>()V

    .line 46
    invoke-direct {v0, p1, p2}, Lcn/domob/wall/core/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 47
    sget-object v1, Lcn/domob/wall/core/c/e;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 51
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcn/domob/wall/core/bean/a;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->d:Lcn/domob/wall/core/bean/a;

    return-object v0
.end method

.method public c()Lcn/domob/wall/core/bean/ControlInfo;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->e:Lcn/domob/wall/core/bean/ControlInfo;

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
    .line 427
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 4
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
    .line 436
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->h:Ljava/util/List;

    if-eqz v0, :cond_34

    .line 437
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 438
    iget-object v2, p0, Lcn/domob/wall/core/c/e;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 440
    :cond_1c
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 441
    iget-object v2, p0, Lcn/domob/wall/core/c/e;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 444
    :cond_34
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->h:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
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
    .line 453
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->g:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcn/domob/wall/core/c/e;->i:Ljava/util/List;

    return-object v0
.end method
