.class public Lcn/dbox/core/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/c/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GET"

.field public static final b:Ljava/lang/String; = "POST"

.field public static final c:I = 0x4e20

.field private static d:Lcn/dbox/core/h/d; = null

.field private static final t:I = 0x1000

.field private static final u:Ljava/lang/String; = "ctwap"


# instance fields
.field private e:Ljava/net/HttpURLConnection;

.field private f:Landroid/content/Context;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
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

.field private k:Ljava/net/Proxy;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcn/dbox/core/c/c$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/c/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/c/c$a;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 70
    const-string v5, "GET"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/dbox/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/c/c$a;)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 84
    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcn/dbox/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/dbox/core/c/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcn/dbox/core/c/c;->f:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcn/dbox/core/c/c;->i:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcn/dbox/core/c/c;->j:Ljava/util/HashMap;

    .line 109
    iput-object p5, p0, Lcn/dbox/core/c/c;->h:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcn/dbox/core/c/c;->l:Ljava/lang/String;

    .line 111
    iput p7, p0, Lcn/dbox/core/c/c;->m:I

    .line 112
    iput-object p8, p0, Lcn/dbox/core/c/c;->n:Lcn/dbox/core/c/c$a;

    .line 114
    iget-object v0, p0, Lcn/dbox/core/c/c;->f:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 122
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcn/dbox/core/c/c;->h:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 123
    const-string v0, "GET"

    iput-object v0, p0, Lcn/dbox/core/c/c;->h:Ljava/lang/String;

    .line 126
    :cond_1d
    if-eqz p2, :cond_ab

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_ab

    .line 127
    iget-object v0, p0, Lcn/dbox/core/c/c;->h:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    if-eqz p6, :cond_a3

    .line 129
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_64

    .line 130
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;
    :try_end_58
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_58} :catch_83

    .line 146
    :goto_58
    iget-object v0, p0, Lcn/dbox/core/c/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 147
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcn/dbox/core/c/c;->o:Ljava/lang/String;

    .line 153
    :cond_60
    :try_start_60
    invoke-direct {p0}, Lcn/dbox/core/c/c;->h()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_b3
    .catch Ljava/lang/Error; {:try_start_60 .. :try_end_63} :catch_c1

    .line 162
    :goto_63
    return-void

    .line 132
    :cond_64
    :try_start_64
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;
    :try_end_82
    .catch Ljava/net/MalformedURLException; {:try_start_64 .. :try_end_82} :catch_83

    goto :goto_58

    .line 141
    :catch_83
    move-exception v0

    .line 142
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Failed to init connector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_58

    .line 136
    :cond_a3
    :try_start_a3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;

    goto :goto_58

    .line 139
    :cond_ab
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v1, "Request URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_b2} :catch_83

    goto :goto_58

    .line 154
    :catch_b3
    move-exception v0

    .line 155
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_63

    .line 157
    :catch_c1
    move-exception v0

    .line 158
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_63
.end method

.method private final a(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 205
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxy -- proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/dbox/core/c/c;->k:Ljava/net/Proxy;

    .line 207
    return-void
.end method

.method private h()V
    .registers 8

    .prologue
    .line 168
    iget-object v0, p0, Lcn/dbox/core/c/c;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 202
    :cond_4
    :goto_4
    return-void

    .line 172
    :cond_5
    const/4 v1, 0x0

    .line 175
    :try_start_6
    iget-object v0, p0, Lcn/dbox/core/c/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcn/dbox/core/h/b;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_91

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v2, "port"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 183
    const-string v3, "apn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    sget-object v4, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current apnType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "| port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    if-eqz v2, :cond_91

    const-string v4, "ctwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 190
    sget-object v3, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v4, "ad request use proxy"

    invoke-virtual {v3, p0, v4}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, v0, v2}, Lcn/dbox/core/c/c;->a(Ljava/lang/String;I)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_91} :catch_98
    .catchall {:try_start_6 .. :try_end_91} :catchall_ac

    .line 198
    :cond_91
    if-eqz v1, :cond_4

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 194
    :catch_98
    move-exception v0

    .line 195
    :try_start_99
    sget-object v2, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v3, "\u83b7\u53d6APN\u5931\u8d25"

    invoke-virtual {v2, p0, v3}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v2, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_ac

    .line 198
    if-eqz v1, :cond_4

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 198
    :catchall_ac
    move-exception v0

    if-eqz v1, :cond_b2

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcn/dbox/core/c/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcn/dbox/core/c/c;->p:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 228
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v1, "Do HTTP connection."

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method public c()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 237
    .line 241
    :try_start_1
    iget-object v0, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;

    if-eqz v0, :cond_21e

    .line 242
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection URL = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 245
    iget-object v0, p0, Lcn/dbox/core/c/c;->k:Ljava/net/Proxy;

    if-eqz v0, :cond_a7

    .line 246
    iget-object v0, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;

    iget-object v1, p0, Lcn/dbox/core/c/c;->k:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    .line 252
    :goto_37
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_21e

    .line 253
    iget-object v0, p0, Lcn/dbox/core/c/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcn/dbox/core/c/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_50

    .line 254
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/dbox/core/c/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_50
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 261
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/dbox/core/c/c;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 262
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/dbox/core/c/c;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 264
    iget-object v0, p0, Lcn/dbox/core/c/c;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_bf

    .line 265
    iget-object v0, p0, Lcn/dbox/core/c/c;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_72
    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcn/dbox/core/c/c;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    if-eqz v1, :cond_72

    .line 268
    iget-object v4, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8d} :catch_8e
    .catchall {:try_start_1 .. :try_end_8d} :catchall_b2

    goto :goto_72

    .line 338
    :catch_8e
    move-exception v0

    move-object v1, v2

    .line 339
    :goto_90
    :try_start_90
    sget-object v3, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v4, "Error happened in connection."

    invoke-virtual {v3, p0, v4}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v3, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_20f

    .line 343
    if-eqz v2, :cond_a1

    .line 344
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_1e8

    .line 351
    :cond_a1
    :goto_a1
    if-eqz v1, :cond_a6

    .line 352
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_1f0

    .line 358
    :cond_a6
    :goto_a6
    return-void

    .line 249
    :cond_a7
    :try_start_a7
    iget-object v0, p0, Lcn/dbox/core/c/c;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b1} :catch_8e
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_b2

    goto :goto_37

    .line 342
    :catchall_b2
    move-exception v0

    move-object v3, v2

    .line 343
    :goto_b4
    if-eqz v3, :cond_b9

    .line 344
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_1f8

    .line 351
    :cond_b9
    :goto_b9
    if-eqz v2, :cond_be

    .line 352
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_200

    .line 356
    :cond_be
    :goto_be
    throw v0

    .line 273
    :cond_bf
    :try_start_bf
    iget-object v0, p0, Lcn/dbox/core/c/c;->h:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcn/dbox/core/c/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_155

    .line 275
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v1, "Connector do HTTP POST."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 278
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v3, p0, Lcn/dbox/core/c/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lcn/dbox/core/c/c;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 288
    if-eqz v1, :cond_11d

    .line 289
    iget-object v3, p0, Lcn/dbox/core/c/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 291
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 292
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 303
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/dbox/core/c/c;->q:I

    .line 306
    :goto_125
    iget v0, p0, Lcn/dbox/core/c/c;->q:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_131

    iget v0, p0, Lcn/dbox/core/c/c;->q:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_162

    .line 307
    :cond_131
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    .line 310
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 311
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/dbox/core/c/c;->q:I

    goto :goto_125

    .line 297
    :cond_155
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    const-string v1, "Connector do HTTP GET."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_11d

    .line 314
    :cond_162
    iget v0, p0, Lcn/dbox/core/c/c;->q:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_21c

    iget v0, p0, Lcn/dbox/core/c/c;->q:I

    const/16 v1, 0x130

    if-gt v0, v1, :cond_21c

    .line 316
    sget-object v0, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL after connection/redirection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 319
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_199} :catch_8e
    .catchall {:try_start_bf .. :try_end_199} :catchall_b2

    .line 321
    const/16 v0, 0x1000

    :try_start_19b
    new-array v0, v0, [B

    .line 323
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a4} :catch_214
    .catchall {:try_start_19b .. :try_end_1a4} :catchall_208

    .line 325
    :goto_1a4
    :try_start_1a4
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b4

    .line 326
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a4

    .line 338
    :catch_1b0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_90

    .line 329
    :cond_1b4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c/c;->s:[B

    .line 331
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/dbox/core/c/c;->s:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/c/c;->r:Ljava/lang/String;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1c5} :catch_1b0
    .catchall {:try_start_1a4 .. :try_end_1c5} :catchall_20b

    move-object v2, v3

    .line 335
    :goto_1c6
    :try_start_1c6
    iget-object v0, p0, Lcn/dbox/core/c/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1cb} :catch_219
    .catchall {:try_start_1c6 .. :try_end_1cb} :catchall_20f

    move-object v0, v2

    move-object v2, v1

    .line 343
    :goto_1cd
    if-eqz v0, :cond_1d2

    .line 344
    :try_start_1cf
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1e1

    .line 351
    :cond_1d2
    :goto_1d2
    if-eqz v2, :cond_a6

    .line 352
    :try_start_1d4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_1d9

    goto/16 :goto_a6

    .line 354
    :catch_1d9
    move-exception v0

    .line 355
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a6

    .line 346
    :catch_1e1
    move-exception v0

    .line 347
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1d2

    .line 346
    :catch_1e8
    move-exception v0

    .line 347
    sget-object v2, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a1

    .line 354
    :catch_1f0
    move-exception v0

    .line 355
    sget-object v1, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a6

    .line 346
    :catch_1f8
    move-exception v1

    .line 347
    sget-object v3, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b9

    .line 354
    :catch_200
    move-exception v1

    .line 355
    sget-object v2, Lcn/dbox/core/c/c;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_be

    .line 342
    :catchall_208
    move-exception v0

    goto/16 :goto_b4

    :catchall_20b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_b4

    :catchall_20f
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_b4

    .line 338
    :catch_214
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_90

    :catch_219
    move-exception v0

    goto/16 :goto_90

    :cond_21c
    move-object v1, v2

    goto :goto_1c6

    :cond_21e
    move-object v0, v2

    goto :goto_1cd
.end method

.method public d()[B
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcn/dbox/core/c/c;->s:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcn/dbox/core/c/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcn/dbox/core/c/c;->q:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcn/dbox/core/c/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcn/dbox/core/c/c;->c()V

    .line 379
    iget-object v0, p0, Lcn/dbox/core/c/c;->n:Lcn/dbox/core/c/c$a;

    if-eqz v0, :cond_c

    .line 380
    iget-object v0, p0, Lcn/dbox/core/c/c;->n:Lcn/dbox/core/c/c$a;

    invoke-interface {v0, p0}, Lcn/dbox/core/c/c$a;->a(Lcn/dbox/core/c/c;)V

    .line 383
    :cond_c
    return-void
.end method
