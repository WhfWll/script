.class Lcn/domob/android/offerwall/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/e$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "GET"

.field static final b:Ljava/lang/String; = "POST"

.field static final c:I = 0x4e20

.field private static d:Lcn/domob/android/offerwall/m; = null

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

.field private n:Lcn/domob/android/offerwall/e$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/offerwall/e$a;)V
    .registers 13

    const/4 v3, 0x0

    const-string v5, "GET"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/offerwall/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/offerwall/e$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/offerwall/e$a;)V
    .registers 14

    const/4 v3, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/offerwall/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/offerwall/e$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/offerwall/e$a;)V
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
            "Lcn/domob/android/offerwall/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/domob/android/offerwall/e;->f:Landroid/content/Context;

    iput-object p3, p0, Lcn/domob/android/offerwall/e;->i:Ljava/lang/String;

    iput-object p4, p0, Lcn/domob/android/offerwall/e;->j:Ljava/util/HashMap;

    iput-object p5, p0, Lcn/domob/android/offerwall/e;->h:Ljava/lang/String;

    iput-object p6, p0, Lcn/domob/android/offerwall/e;->l:Ljava/lang/String;

    iput p7, p0, Lcn/domob/android/offerwall/e;->m:I

    iput-object p8, p0, Lcn/domob/android/offerwall/e;->n:Lcn/domob/android/offerwall/e$a;

    :try_start_11
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->h:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "GET"

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->h:Ljava/lang/String;

    :cond_19
    if-eqz p2, :cond_a7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->h:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-eqz p6, :cond_9f

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_60

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

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;
    :try_end_54
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_54} :catch_7f

    :goto_54
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_5c

    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->o:Ljava/lang/String;

    :cond_5c
    invoke-direct {p0}, Lcn/domob/android/offerwall/e;->h()V

    return-void

    :cond_60
    :try_start_60
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

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;
    :try_end_7e
    .catch Ljava/net/MalformedURLException; {:try_start_60 .. :try_end_7e} :catch_7f

    goto :goto_54

    :catch_7f
    move-exception v0

    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

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

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    goto :goto_54

    :cond_9f
    :try_start_9f
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;

    goto :goto_54

    :cond_a7
    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v1, "Request URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/net/MalformedURLException; {:try_start_9f .. :try_end_ae} :catch_7f

    goto :goto_54
.end method

.method private final a(Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

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

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->k:Ljava/net/Proxy;

    return-void
.end method

.method private h()V
    .registers 8

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/offerwall/f;->z(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "port"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "apn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current apnType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

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

    invoke-virtual {v4, p0, v5}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

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

    sget-object v3, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v4, "ad request use proxy"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcn/domob/android/offerwall/e;->a(Ljava/lang/String;I)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_91} :catch_98
    .catchall {:try_start_6 .. :try_end_91} :catchall_ac

    :cond_91
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catch_98
    move-exception v0

    :try_start_99
    sget-object v2, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v3, "\u83b7\u53d6APN\u5931\u8d25\u3002"

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_ac

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_ac
    move-exception v0

    if-eqz v1, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/domob/android/offerwall/e;->p:Ljava/lang/String;

    return-void
.end method

.method protected b()V
    .registers 3

    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v1, "Do HTTP connection."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected c()V
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;

    if-eqz v0, :cond_218

    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection URL = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->k:Ljava/net/Proxy;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/offerwall/e;->k:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    :goto_37
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_218

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/domob/android/offerwall/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/offerwall/e;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/offerwall/e;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->j:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcn/domob/android/offerwall/e;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v4, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8d} :catch_8e
    .catchall {:try_start_1 .. :try_end_8d} :catchall_b2

    goto :goto_72

    :catch_8e
    move-exception v0

    move-object v1, v2

    :goto_90
    :try_start_90
    sget-object v3, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v4, "Error happened in connection."

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v3, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_209

    if-eqz v2, :cond_a1

    :try_start_9e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_1e2

    :cond_a1
    :goto_a1
    if-eqz v1, :cond_a6

    :try_start_a3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_1ea

    :cond_a6
    :goto_a6
    return-void

    :cond_a7
    :try_start_a7
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b1} :catch_8e
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_b2

    goto :goto_37

    :catchall_b2
    move-exception v0

    move-object v3, v2

    :goto_b4
    if-eqz v3, :cond_b9

    :try_start_b6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_1f2

    :cond_b9
    :goto_b9
    if-eqz v2, :cond_be

    :try_start_bb
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_1fa

    :cond_be
    :goto_be
    throw v0

    :cond_bf
    :try_start_bf
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->h:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_14f

    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v1, "DomobConnector do HTTP POST."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v3, p0, Lcn/domob/android/offerwall/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lcn/domob/android/offerwall/e;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    if-eqz v1, :cond_11d

    iget-object v3, p0, Lcn/domob/android/offerwall/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_11d
    :goto_11d
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/offerwall/e;->q:I

    :goto_125
    iget v0, p0, Lcn/domob/android/offerwall/e;->q:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_131

    iget v0, p0, Lcn/domob/android/offerwall/e;->q:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_15c

    :cond_131
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/offerwall/e;->q:I

    goto :goto_125

    :cond_14f
    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    const-string v1, "DomobConnector do HTTP GET."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_11d

    :cond_15c
    iget v0, p0, Lcn/domob/android/offerwall/e;->q:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_216

    iget v0, p0, Lcn/domob/android/offerwall/e;->q:I

    const/16 v1, 0x130

    if-gt v0, v1, :cond_216

    sget-object v0, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL after connection/redirection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_193} :catch_8e
    .catchall {:try_start_bf .. :try_end_193} :catchall_b2

    const/16 v0, 0x1000

    :try_start_195
    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19e} :catch_20e
    .catchall {:try_start_195 .. :try_end_19e} :catchall_202

    :goto_19e
    :try_start_19e
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1ae

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19e

    :catch_1aa
    move-exception v0

    move-object v2, v3

    goto/16 :goto_90

    :cond_1ae
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->s:[B

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/offerwall/e;->s:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/offerwall/e;->r:Ljava/lang/String;
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1bf} :catch_1aa
    .catchall {:try_start_19e .. :try_end_1bf} :catchall_205

    move-object v2, v3

    :goto_1c0
    :try_start_1c0
    iget-object v0, p0, Lcn/domob/android/offerwall/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1c5} :catch_213
    .catchall {:try_start_1c0 .. :try_end_1c5} :catchall_209

    move-object v0, v2

    move-object v2, v1

    :goto_1c7
    if-eqz v0, :cond_1cc

    :try_start_1c9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1db

    :cond_1cc
    :goto_1cc
    if-eqz v2, :cond_a6

    :try_start_1ce
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d1} :catch_1d3

    goto/16 :goto_a6

    :catch_1d3
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a6

    :catch_1db
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_1cc

    :catch_1e2
    move-exception v0

    sget-object v2, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a1

    :catch_1ea
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a6

    :catch_1f2
    move-exception v1

    sget-object v3, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v3, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b9

    :catch_1fa
    move-exception v1

    sget-object v2, Lcn/domob/android/offerwall/e;->d:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_be

    :catchall_202
    move-exception v0

    goto/16 :goto_b4

    :catchall_205
    move-exception v0

    move-object v2, v1

    goto/16 :goto_b4

    :catchall_209
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_b4

    :catch_20e
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_90

    :catch_213
    move-exception v0

    goto/16 :goto_90

    :cond_216
    move-object v1, v2

    goto :goto_1c0

    :cond_218
    move-object v0, v2

    goto :goto_1c7
.end method

.method protected d()[B
    .registers 2

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->s:[B

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method protected f()I
    .registers 2

    iget v0, p0, Lcn/domob/android/offerwall/e;->q:I

    return v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 2

    invoke-virtual {p0}, Lcn/domob/android/offerwall/e;->c()V

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->n:Lcn/domob/android/offerwall/e$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/domob/android/offerwall/e;->n:Lcn/domob/android/offerwall/e$a;

    invoke-interface {v0, p0}, Lcn/domob/android/offerwall/e$a;->a(Lcn/domob/android/offerwall/e;)V

    :cond_c
    return-void
.end method
