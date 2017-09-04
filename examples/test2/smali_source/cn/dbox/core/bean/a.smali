.class public Lcn/dbox/core/bean/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcn/dbox/core/h/d;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/bean/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/bean/a;->b:Lcn/dbox/core/h/d;

    .line 247
    new-instance v0, Lcn/dbox/core/bean/a$1;

    invoke-direct {v0}, Lcn/dbox/core/bean/a$1;-><init>()V

    sput-object v0, Lcn/dbox/core/bean/a;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    .line 192
    iput-object p1, p0, Lcn/dbox/core/bean/a;->d:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcn/dbox/core/bean/a;->e:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcn/dbox/core/bean/a;->f:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    .line 197
    if-eqz p1, :cond_85

    .line 198
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->c:Ljava/lang/String;

    .line 199
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->d:Ljava/lang/String;

    .line 200
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->e:Ljava/lang/String;

    .line 202
    const-string v0, "logo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->f:Ljava/lang/String;

    .line 203
    const-string v0, "banner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->g:Ljava/lang/String;

    .line 204
    const-string v0, "thumbnail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->h:Ljava/lang/String;

    .line 205
    const-string v0, "action_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->j:Ljava/lang/String;

    .line 206
    const-string v0, "tracker"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->k:Ljava/lang/String;

    .line 207
    const-string v0, "click_tracker"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/a;->l:Ljava/lang/String;

    .line 211
    :try_start_54
    new-instance v2, Lorg/json/JSONArray;

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_61
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_64} :catch_7b

    move-result v0

    if-ge v1, v0, :cond_85

    .line 215
    :try_start_67
    iget-object v0, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_70} :catch_74

    .line 213
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_61

    .line 216
    :catch_74
    move-exception v0

    .line 217
    :try_start_75
    sget-object v3, Lcn/dbox/core/bean/a;->b:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_70

    .line 220
    :catch_7b
    move-exception v0

    .line 221
    sget-object v1, Lcn/dbox/core/bean/a;->b:Lcn/dbox/core/h/d;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 224
    :cond_85
    return-void
.end method

.method static synthetic a(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/dbox/core/bean/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcn/dbox/core/bean/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/dbox/core/bean/a;->l:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/core/bean/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 87
    iput p1, p0, Lcn/dbox/core/bean/a;->m:I

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcn/dbox/core/bean/a;->p:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcn/dbox/core/bean/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcn/dbox/core/bean/a;->n:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcn/dbox/core/bean/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcn/dbox/core/bean/a;->o:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcn/dbox/core/bean/a;->m:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/dbox/core/bean/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcn/dbox/core/bean/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
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
    .line 121
    iget-object v0, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcn/dbox/core/bean/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcn/dbox/core/bean/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcn/dbox/core/bean/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcn/dbox/core/bean/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcn/dbox/core/bean/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcn/dbox/core/bean/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcn/dbox/core/bean/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfo [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBanner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActionUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClickTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcn/dbox/core/bean/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcn/dbox/core/bean/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcn/dbox/core/bean/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcn/dbox/core/bean/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/dbox/core/bean/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcn/dbox/core/bean/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcn/dbox/core/bean/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcn/dbox/core/bean/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcn/dbox/core/bean/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcn/dbox/core/bean/a;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 245
    return-void
.end method
